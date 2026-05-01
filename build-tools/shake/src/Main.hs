{-# LANGUAGE GeneralisedNewtypeDeriving #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}

module Main where

import Control.Concurrent (forkIO, threadDelay)
import Control.Concurrent.Chan (newChan, readChan)
import Control.DeepSeq (NFData)
import Control.Monad (forM_, forever, void, when)
import Data.Binary (Binary)
import qualified Data.ByteString as BS
import Data.Hashable (Hashable)
import Data.List (groupBy, isPrefixOf, sort)
import Data.List.Split (splitOn, splitWhen)
import qualified Data.Text as Text
import qualified Data.Text.Encoding as TE
import Data.Typeable (Typeable)
import Development.Shake
import Development.Shake.Database
import Development.Shake.FilePath
import System.Console.GetOpt
import qualified System.Directory as Dir
import System.Environment
import System.FSNotify (WatchConfig (confThreadingMode))
import qualified System.FSNotify as Watch

------------------------------------------------------------------------------
-- Main function
------------------------------------------------------------------------------

main :: IO ()
main = do
  let rules = do
        htmlRule
        hsRule
        mkdocsRule

      flags = [Option "" ["watch"] (NoArg $ Left "Watch mode is exclusive") "Watch mode (exclusive)"]

      buildMode = shakeArgsWith shakeOptions flags $ \flags targets -> pure $ Just $ do
        if null targets
          then rules
          else want targets >> withoutActions rules

  args <- getArgs
  -- if the only option is "--watch", then enter watch mode;
  -- otherwise let Shake handle the options
  if args == ["--watch"]
    then watchMode
    else buildMode

------------------------------------------------------------------------------
-- Watch mode
------------------------------------------------------------------------------

{- | Watch mode
Start a file listener on the source directory.
On file change run Shake with the corresponding *.md file as
a target.
-}
watchMode :: IO ()
watchMode = do
  root <- Dir.canonicalizePath "."
  shakeWithDatabase shakeOptions (lagdamd2md True) $ \db -> do
    _ <- Watch.withManager $ \mgr ->
      do
        changedFiles <- newChan
        let loop = do
              file <- Watch.eventPath <$> readChan changedFiles
              let srcfile =
                    map (\c -> if isPathSeparator c then '.' else c)
                      . (<.> "md")
                      . applyN 2 dropExtension
                      . dropDirectory 1
                      . makeRelative root
                      $ file
              (_, after) <-
                shakeRunDatabase
                  db
                  [ withVerbosity Diagnostic $
                      need [_mkdocs </> "docs" </> srcfile]
                  ]
              shakeRunAfter shakeOptions after
              loop
        forkIO $ void $ Watch.watchTreeChan mgr "src" isModified changedFiles
        loop
    return ()

-- | Predicate on Watch.Event to filter only modified files
isModified :: Watch.Event -> Bool
isModified (Watch.Modified{}) = True
isModified _ = False

------------------------------------------------------------------------------
-- Build rules
------------------------------------------------------------------------------

{- | Generate a Haskell package for conformance testing
This depends on:
1. the contents of hs-src/
2. the Agda files which are transitively imported from the entrypoint
module Ledger.Conway.Foreign
Regarding 2), we don't declare its dependencies explicitly or traverse the
Agda files in the repository to find what are those dependencies. Instead we
let Agda do the work by declaring this rule as phony, which forces
recompilation everytime the target is wanted.
-}
hsRule :: Rules ()
hsRule = phony "hs" $ do
  -- read and copy the files in hs-src to _hs
  hssrcfiles <- getDirectoryFiles "build-tools/static/hs-src" ["//*"]
  forM_ hssrcfiles $ \file -> do
    copyFileChanged ("build-tools/static/hs-src" </> file) (hsDist </> file)

  -- run Agda on the entrypoint and put the results in _build
  cmd_
    "agda"
    [ "-c"
    , "--ghc-dont-call-ghc"
    , "--no-main"
    , "--compile-dir=" ++ _build
    ]
    ["src/Ledger/Conway/Foreign.lagda.md"]

  cmd_
    "agda"
    [ "-c"
    , "--ghc-dont-call-ghc"
    , "--no-main"
    , "--compile-dir=" ++ _build
    ]
    ["src/Ledger/Dijkstra/Foreign.lagda.md"]

  -- copy over the Agda-generated MAlonzo files to _hs
  malonzofiles <- map ("MAlonzo" </>) <$> getDirectoryFiles _malonzo ["//*.hs"]
  forM_ malonzofiles $ \file -> do
    copyFileChanged (_build </> file) (hsDist </> "src" </> file)

  -- run hpack to generate the cabal file
  command_
    [Cwd hsDist]
    "hpack"
    []

{- | Generate the index.html file
For this:
1. Get all lagda, lagda.md, and agda files under src/
2. Illiterate the lagda and lagda.md files, copy agda files unchanged
3. Write a generated index.agda and agda-lib files in _html
4. Call agda on index.agda to generate the html in _htmlOut
-}
htmlRule :: Rules ()
htmlRule =
  phony "html" $ do
    -- declare dependencies on all agda files
    lagdamdfiles <- map ("src" </>) <$> getDirectoryFiles "src" ["//*.lagda.md"]
    agdafiles <- map ("src" </>) <$> getDirectoryFiles "src" ["//*.agda"]
    agdalibfiles <- map ("src-lib-exts" </>) <$> getDirectoryFiles "src-lib-exts" ["//*.agda"]

    -- auxiliary function to illiterate literate files (TeX or Md)
    let go :: CodeDelim -> FilePath -> Action ()
        go cd file = do
          let out = _htmlPP </> replaceExtensions file "agda"
          putInfo $ mconcat ["Illiterating from ", file, " to ", out]
          lcontents <- readFileLines file
          let ilcontents = illiterate cd lcontents
          writeFileLines out ilcontents

    forM_ lagdamdfiles $ go codeDelimMd
    forM_ (agdafiles ++ agdalibfiles) (\file -> copyFileChanged file (_htmlPP </> file))

    -- agda-lib file
    let agdaprojectfile =
          [ "name: formal-ledger-html"
          , "depend:"
          , "  standard-library"
          , "  standard-library-classes"
          , "  standard-library-meta"
          , "  abstract-set-theory"
          , "  iog-prelude"
          , ""
          , "include:"
          , "  " ++ htmlPP </> "src"
          , "  " ++ htmlPP </> "src-lib-exts"
          , "  ./"
          ]
        agdamodules =
          sort . map (agdafile2module . dropDirectory 1) $
            agdafiles ++ lagdamdfiles
        -- index file
        indexfile =
          [ "module index where"
          , ""
          ]
            ++ map ("import " ++) agdamodules

    -- write formal-ledger-html.agda-lib and index.agda files
    writeFileLines (_html </> "formal-ledger-html.agda-lib") agdaprojectfile
    writeFileLines (_html </> "index.agda") indexfile

    -- run agda to generate the html
    command_
      [Cwd _html]
      "agda"
      [ "--fls"
      , "--fls-html-dir=" ++ "../../" ++ htmlDist
      , "index.agda"
      ]

------------------------------------------------------------------------------
-- Markdown
------------------------------------------------------------------------------

-- | List of folder paths of library extension files
libExts :: [FilePath]
libExts =
  [ "iog-prelude"
  , "stdlib"
  , "stdlib-classes"
  , "stdlib-meta"
  ]

{- | Process literate Markdown Agda files using Agda
The target is a *.md file in _build/mkdocs/docs
Its dependency is a .lagda.md file in either src or src-lib-exts
Main only is intended to use in filewatch mode
-}
lagdamd2md ::
  -- | Main only mode?
  Bool ->
  Rules ()
lagdamd2md mainOnly =
  _mkdocs </> "docs" </> "*.md" %> \out -> do
    let mdfile =
          joinPath
            . splitOn "."
            . dropExtension
            . dropDirectory 3
            $ out

        src =
          if any (`isPrefixOf` mdfile) libExts
            then "src-lib-exts"
            else "src"

        srcfile = src </> mdfile <.> "lagda" <.> "md"

    need [srcfile]

    command_
      []
      "agda"
      $ ["--fls"]
        ++ (if mainOnly then ["--fls-main-only"] else [])
        ++ [ "--fls-html-dir=" ++ (_mkdocs </> "docs")
           , srcfile
           ]

mkdocsRule :: Rules ()
mkdocsRule = do
  lagdamd2md False
  phony "mkdocs" $ do
    lagdamdfiles <- map ("src" </>) <$> getDirectoryFiles "src" ["//*.lagda.md"]
    agdafiles <- map ("src" </>) <$> getDirectoryFiles "src" ["//*.agda"]
    agdalibfiles <- map ("src-lib-exts" </>) <$> getDirectoryFiles "src-lib-exts" ["//*.agda"]

    need (lagdamdfiles ++ agdafiles ++ agdalibfiles)

    need [_mkdocs </> "docs" </> "Ledger.md"]

    staticfiles <- getDirectoryFiles "build-tools/static/mkdocs" ["//*"]

    forM_ staticfiles $ \file ->
      copyFileChanged ("build-tools/static/mkdocs" </> file) (_mkdocs </> file)

    copyFileChanged "README.md" (_mkdocs </> "docs" </> "index.md")

    liftIO $ Dir.createDirectoryIfMissing True mkdocsDist
    root <- liftIO $ Dir.getCurrentDirectory >>= Dir.makeAbsolute

    command_
      [Cwd _mkdocs]
      "mkdocs"
      [ "build"
      , "-s"
      , "-d"
      , root </> mkdocsDist ]

------------------------------------------------------------------------------
-- Build directory paths
------------------------------------------------------------------------------

-- | Root build directory
_build :: FilePath
_build = "_build"

-- | Various directories for latex
latexIn, latexOut, latexGen, latexPP :: FilePath
latexIn = "latex.in" -- static latex inputs
latexGen = "latex.gen" -- generated latex (from agda)
latexPP = "latex.pp" -- latex postprocessed
latexOut = "latex.out" -- latex outputs

_latexGen :: FilePath
_latexGen = _build </> latexGen

malonzo, malonzoGen :: FilePath
malonzo = "MAlonzo"
malonzoGen = malonzo </> "Code"

_malonzo, _malonzoGen :: FilePath
_malonzo = _build </> malonzo
_malonzoGen = _build </> malonzoGen

html, htmlPP :: FilePath
html = "html"
htmlPP = "html.pp"

_html, _htmlPP :: FilePath
_html = _build </> html
_htmlPP = _html </> htmlPP

mkdocs :: FilePath
mkdocs = "mkdocs"

_mkdocs :: FilePath
_mkdocs = _build </> mkdocs

-- | Root output directory
dist :: FilePath
dist = "dist"

mkdocsDist, htmlDist, hsDist :: FilePath
mkdocsDist = dist </> "mkdocs"
htmlDist = dist </> "html"
hsDist = dist </> "hs"

------------------------------------------------------------------------------
-- Shake oracles
------------------------------------------------------------------------------

newtype AgdaDataDir = AgdaDataDir () deriving (Show, Typeable, Eq, Hashable, Binary, NFData)
type instance RuleResult AgdaDataDir = String

addAgdaDataDirOracle :: Rules (AgdaDataDir -> Action String)
addAgdaDataDirOracle = addOracle $ \(AgdaDataDir _) -> init . fromStdout <$> cmd "agda --print-agda-data-dir" :: Action String

------------------------------------------------------------------------------
-- Utilities
------------------------------------------------------------------------------

{- | Map an Agda filepath to a module name.
The path is not prepended by extra directories
-}
agdafile2module :: FilePath -> String
agdafile2module =
  map (\c -> if isPathSeparator c then '.' else c) -- turn path separators to '.'
    . dropExtensions -- remove the extension

-- | UTF8 version of readFileLines
readFileLinesUtf8 :: FilePath -> Action [String]
readFileLinesUtf8 file = do
  need [file]
  text <- TE.decodeUtf8' <$> liftIO (BS.readFile file)
  either (fail . show) (return . map Text.unpack . Text.lines) text

{- | Transform an lagda file to a agda file.
discard and copy are mutually recursive:
discard runs outside code blocks
copy runs inside code blocks
-}
data CodeDelim = CodeDelim
  { begincode :: String
  , endcode :: String
  }

codeDelimMd :: CodeDelim
codeDelimMd = CodeDelim "```agda" "```"

illiterate :: CodeDelim -> [String] -> [String]
illiterate CodeDelim{..} = discard
 where
  discard, copy :: [String] -> [String]
  discard [] = []
  discard (xs : xss)
    | take (length begincode) xs == begincode = "" : copy xss
    | otherwise = discard xss
  copy [] = []
  copy (xs : xss)
    | take (length endcode) xs == endcode = "" : discard xss
    | otherwise = xs : copy xss

-- | Nary apply
applyN :: Int -> (a -> a) -> (a -> a)
applyN 0 _ = id
applyN 1 f = f
applyN n f = f . applyN (n - 1) f

-- | Nary versions of {drop,take}Directory1
dropDirectory :: Int -> FilePath -> FilePath
dropDirectory = flip applyN dropDirectory1
