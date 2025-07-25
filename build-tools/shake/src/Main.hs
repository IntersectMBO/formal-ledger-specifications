{-# LANGUAGE GeneralisedNewtypeDeriving #-}
{-# LANGUAGE TypeFamilies               #-}
{-# LANGUAGE RecordWildCards            #-}
module Main where

import Control.Monad (when, forM_, forever, void)
import Data.List (sort, isPrefixOf, groupBy)
import Data.List.Split (splitOn, splitWhen)
import Data.Typeable (Typeable)
import Control.DeepSeq (NFData)
import Data.Hashable (Hashable)
import Data.Binary (Binary)
import qualified Data.Text as Text
import qualified Data.Text.Encoding as TE
import qualified Data.ByteString as BS
import qualified System.FSNotify as Watch
import Development.Shake
import Development.Shake.Database
import Development.Shake.FilePath
import Control.Concurrent (threadDelay, forkIO)
import Control.Concurrent.Chan (newChan, readChan)
import qualified System.Directory as Dir
import System.Console.GetOpt
import System.Environment
import System.FSNotify (WatchConfig(confThreadingMode))

------------------------------------------------------------------------------
-- Main function
------------------------------------------------------------------------------

main :: IO ()
main = do
  let rules = do pdfRule
                 htmlRule
                 hsRule
                 docsRule

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

-- | Watch mode
-- Start a file listener on the source directory.
-- On file change run Shake with the corresponding *.md file as
-- a target.
watchMode :: IO ()
watchMode = do
  root <- Dir.canonicalizePath "."
  shakeWithDatabase shakeOptions (lagdamd2md >> md2mkdocs) $ \db -> do
    _ <- Watch.withManager $ \mgr ->
      do changedFiles <- newChan
         let loop = do file <- Watch.eventPath <$> readChan changedFiles
                       let srcfile = map (\c -> if isPathSeparator c then '.' else c)
                                   . (<.> "md")
                                   . applyN 2 dropExtension
                                   . dropDirectory 4
                                   . makeRelative root
                                   $ file
                       (_, after) <- shakeRunDatabase db [withVerbosity Diagnostic
                                                         $ need [ _md </> mkdocs </> "docs" </> srcfile ]]
                       shakeRunAfter shakeOptions after
                       loop
         forkIO $ void $ Watch.watchTreeChan mgr "_build/md/md.in/src" isModified changedFiles
         loop
    return ()

-- | Predicate on Watch.Event to filter only modified files
isModified :: Watch.Event -> Bool
isModified (Watch.Modified {}) = True
isModified _ = False

------------------------------------------------------------------------------
-- Build rules
------------------------------------------------------------------------------

-- | List of files to be pp with hldiff.py
-- in the Conway specification
hlFiles :: [FilePath]
hlFiles = map (("Ledger/Conway" </>) . (<.> "tex"))
  [ "Transaction", "Utxo" ]

-- | List of files to be postprocessed with agda2vec.py
vertVecFiles :: [FilePath]
vertVecFiles = map (("Ledger/Conway" </>) . (<.> "tex"))
  [ "Certs", "Chain", "Enact", "Epoch"
  , "Ratify", "Ledger", "NewPP", "Utxo"] -- "Utxo/Properties"

-- | Copy files in latex/ directly to _build/PROJ/latex.in
copyIn :: Rules ()
copyIn =
  _build </> "*" </> latexIn <//> "*" %> \out -> do
    let file = dropDirectory 3 out
    need [ "build-tools/static/latex" </> file ]
    copyFile' ("build-tools/static/latex" </> file) out

-- | Generate tex from a lagda file.
-- Takes the lagda file from src/ and puts the generated file in
-- _build/latex.gen/
lagda2tex :: Rules ()
lagda2tex =
  _build </> latexGen <//> "*.tex" %> \out -> do
    let modulename = dropDirectory 2 . dropExtension $ out
        lagdaifile = "src" </> modulename <.> "lagda"
    need [ lagdaifile ]
    cmd_ "agda" [ "--latex"
                , "--latex-dir=" ++ _latexGen ]
                [ lagdaifile ]

-- | Run postprocessors on Agda-generated tex files.
-- The result is placed in _build/PROJ/latex.pp
tex2texPP :: Rules ()
tex2texPP =
  -- _build/conway-ledger/latex.pp/Ledger/*.tex
  _build </> "*" </> latexPP <//> "*.tex" %> \out -> do
    let texfile = dropDirectory 3 out
    need [ _latexGen </> texfile ]

    -- agda2vec (used by Cardano and Conway)
    need [ "build-tools/scripts/agda2vec.py" ]
    if texfile `elem` vertVecFiles
      then cmd_ "python ./build-tools/scripts/agda2vec.py" [_latexGen </> texfile, out]
      else copyFile' (_latexGen </> texfile) out

    -- hldiff (used by Conway)
    let dir = dropDirectory 1 out
    need [ "build-tools/scripts/hldiff.py", "build-tools/static/latex/hldiff_list.txt" ]
    when ("conway" `isPrefixOf` dir && texfile `elem` hlFiles) $
      cmd_ "python ./build-tools/scripts/hldiff.py" [out, out, "build-tools/static/latex/hldiff_list.txt"]

-- | Generate a pdf file in PROJ/latex.out from a tex file
--
-- The project name is derived from the name of the file. E.g.
-- cardano-ledger.pdf project's name is cardano-ledger
--
-- To generate the pdf we:
-- 1. Get the \agdainputs from the tex main file
-- 2. Declare as dependencies the Agda, tex, and font input files
-- 3. Run xelatex and biber on the main tex file
--
-- The way the pdf looks depends only on the Agda-generated tex files which the
-- main imports. Therefore if those files don't change, even if their
-- dependencies do, the pdf will not change and thus the need to recompile it.
--
-- The rules use an oracle to locate the agda data dir from which we copy over
-- the Agda.sty file.
tex2pdf :: Rules ()
tex2pdf = do
  agdaDataDir <- addAgdaDataDirOracle
  _build <//> "latex.out/*.pdf" %> \out -> do
    -- define the project and latex build directories
    let proj        = takeBaseName out
        _proj       = _build </> proj
        _latexIn    = _proj </> latexIn  -- static inputs
        _latexPP    = _proj </> latexPP  -- postprocessed files
        _latexOut   = _proj </> latexOut -- outputs
        maintexfile = _latexIn </> proj <.> "tex"

    -- depend on the project tex file
    need [ maintexfile ]

    -- read the Agda inputs from the tex file
    agdainputs <- getAgdaInputs <$> readFileLinesUtf8 maintexfile

    let agdafiles  = map ((_latexPP </>) . (<.> "tex")) agdainputs
    let otherfiles = map (_latexIn </>)
                         [ "references.bib", "Notation.tex", "macros.sty", "preamble.tex"
                         , "Definitions.tex", "Diagrams/CardanoLedger.tex"
                         , "ConwayBootstrap.tex", "ConwayBootstrapEnact.tex" ]
    fontfiles <- map (_latexIn </>) <$> getDirectoryFiles "build-tools/static/latex" [ "fonts/*.ttf" ]

    -- declare the dependencies
    need $ fontfiles ++ otherfiles ++ agdafiles

    -- copy the references file for biber
    copyFileChanged (_latexIn </> "references.bib") (_latexOut </> "references.bib")

    -- copy the agda.sty
    agdasty <- (</> "latex/agda.sty") <$> agdaDataDir (AgdaDataDir ())
    copyFileChanged agdasty (_latexIn </> "agda.sty")

    -- latexmk
    command_ [ Cwd _proj
             , AddEnv "TEXINPUTS" (concat [ latexIn, "//:", latexPP, "//:" ])
             , AddEnv "TTFONTS" (latexIn ++ "/fonts//:") ]
             "latexmk"
             [ "-halt-on-error"
             , "-xelatex"
             , "-output-directory=" ++ latexOut
             , proj ]

-- | All rules required to generate a pdf
pdfRule :: Rules ()
pdfRule = do
  -- Auxiliary rules
  lagda2tex
  tex2pdf
  tex2texPP
  copyIn

  -- Top level pdf rule
  dist </> "*.pdf" %> \out -> do
    let proj = takeBaseName out
        dep  = _build </> proj </> latexOut </> proj <.> "pdf"
    need [ dep ]
    copyFile' dep out

  phony "cardano-ledger.pdf" $ do
    need [ dist </> "cardano-ledger.pdf" ]

  phony "conway-ledger.pdf" $ do
    need [ dist </> "conway-ledger.pdf" ]

-- | Generate a Haskell package for conformance testing
-- This depends on:
-- 1. the contents of hs-src/
-- 2. the Agda files which are transitively imported from the entrypoint
-- module Ledger.Conway.Foreign.HSLedger
--
-- Regarding 2), we don't declare its dependencies explicitly or traverse the
-- Agda files in the repository to find what are those dependencies. Instead we
-- let Agda do the work by declaring this rule as phony, which forces
-- recompilation everytime the target is wanted.
hsRule :: Rules ()
hsRule = phony "hs" $ do
  -- read and copy the files in hs-src to _hs
  hssrcfiles <- getDirectoryFiles "build-tools/static/hs-src" [ "//*" ]
  forM_ hssrcfiles $ \file -> do
    copyFileChanged ("build-tools/static/hs-src" </> file) (hsDist </> file)

  -- run Agda on the entrypoint and put the results in _build
  cmd_ "agda" [ "-c"
              , "--ghc-dont-call-ghc"
              , "--no-main"
              , "--compile-dir=" ++ _build ]
              [ "src/Ledger/Conway/Foreign/HSLedger.agda" ]

  -- copy over the Agda-generated MAlonzo files to _hs
  malonzofiles <- map ("MAlonzo" </>) <$> getDirectoryFiles _malonzo [ "//*.hs" ]
  forM_ malonzofiles $ \file -> do
    copyFileChanged (_build </> file) (hsDist </> "src" </> file)

  -- run hpack to generate the cabal file
  command_ [ Cwd hsDist ]
           "hpack"
           []

-- | Generate the index.html file
-- For this:
-- 1. Get all lagda, lagda.md, and agda files under src/
-- 2. Illiterate the lagda and lagda.md files, copy agda files unchanged
-- 3. Write a generated index.agda and agda-lib files in _html
-- 4. Call agda on index.agda to generate the html in _htmlOut
htmlRule :: Rules ()
htmlRule =
  phony "html" $ do

    -- declare dependencies on all agda files
    lagdafiles   <- map ("src" </>) <$> getDirectoryFiles "src" [ "//*.lagda" ]
    lagdamdfiles <- map ("src" </>) <$> getDirectoryFiles "src" [ "//*.lagda.md" ]
    agdafiles    <- map ("src" </>) <$> getDirectoryFiles "src" [ "//*.agda"  ]
    agdalibfiles <- map ("src-lib-exts" </>) <$> getDirectoryFiles "src-lib-exts" [ "//*.agda"  ]

    -- auxiliary function to illiterate literate files (TeX or Md)
    let go :: CodeDelim -> FilePath -> Action ()
        go cd file = do let out = _htmlPP </> replaceExtensions file "agda"
                        putInfo $ mconcat ["Illiterating from ", file, " to ", out]
                        lcontents <- readFileLines file
                        let ilcontents = illiterate cd lcontents
                        writeFileLines out ilcontents

    forM_ lagdafiles $ go codeDelimTex
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
        agdamodules = sort . map (agdafile2module . dropDirectory 1)
                      $ agdafiles ++ lagdafiles ++ lagdamdfiles
        -- index file
        indexfile =
          [ "module index where"
          , "" ] ++ map ("import " ++) agdamodules

    -- write formal-ledger-html.agda-lib and index.agda files
    writeFileLines (_html </> "formal-ledger-html.agda-lib") agdaprojectfile
    writeFileLines (_html </> "index.agda") indexfile

    -- run agda to generate the html
    command_ [ Cwd _html ]
             "agda"
             [ "--fls"
             , "--fls-html-dir=" ++ "../../" ++ htmlDist
             , "index.agda" ]

------------------------------------------------------------------------------
-- Markdown
------------------------------------------------------------------------------

-- | List of folder paths of library extension files
libExts :: [FilePath]
libExts = [ "iog-prelude"
          , "stdlib"
          , "stdlib-classes"
          , "stdlib-meta"
          ]

-- | Process literate Markdown Agda files using Agda
-- The target is a *.md file in _build/md/md.pp
-- Its dependency is a .lagda.md file in _build/md/md.in
lagdamd2md :: Rules ()
lagdamd2md =
  _md </> mdPP </> "*.md" %> \out -> do
    let mdfile = joinPath
               . splitOn "."
               . dropExtension
               . dropDirectory 3 $ out

        src = if any (`isPrefixOf` mdfile) libExts
                then "src-lib-exts"
                else "src"

        srcfile = src </> mdfile <.> "lagda" <.> "md"

    need [_md </> mdIn </> srcfile]

    command_ [ Cwd $ _md </> mdIn ]
             "agda"
             [ "--fls"
             , "--fls-main-only"
             , "--fls-html-dir=" ++ "../" ++ mdPP
             , srcfile ]

-- | Copy files into the mkDocs docs directory
md2mkdocs :: Rules ()
md2mkdocs =
  _md </> mkdocs </> "docs" </> "*.md" %> \out -> do
    let mdfile = (_md </>) . (mdPP </>)
               . dropDirectory 4 $ out
    copyFileChanged mdfile out

docsRule :: Rules ()
docsRule = do
  lagdamd2md
  md2mkdocs

------------------------------------------------------------------------------
-- Build directory paths
------------------------------------------------------------------------------

-- | Root build directory
_build :: FilePath
_build = "_build"

-- | Various directories for latex
latexIn, latexOut, latexGen, latexPP :: FilePath
latexIn  = "latex.in"  -- static latex inputs
latexGen = "latex.gen" -- generated latex (from agda)
latexPP  = "latex.pp"  -- latex postprocessed
latexOut = "latex.out" -- latex outputs

_latexGen :: FilePath
_latexGen = _build </> latexGen

malonzo, malonzoGen :: FilePath
malonzo    = "MAlonzo"
malonzoGen = malonzo </> "Code"

_malonzo, _malonzoGen :: FilePath
_malonzo    = _build </> malonzo
_malonzoGen = _build </> malonzoGen

html, htmlPP :: FilePath
html    = "html"
htmlPP  = "html.pp"

_html, _htmlPP :: FilePath
_html    = _build </> html
_htmlPP  = _html  </> htmlPP

md, mdIn, mdPP :: FilePath
md   = "md"
mdIn   = "md.in"
mdPP = "md.pp"

_md :: FilePath
_md = _build </> md

mkdocs :: FilePath
mkdocs = "mkdocs"

-- | Root output directory
dist :: FilePath
dist = "dist"

pdfDist, htmlDist, hsDist :: FilePath
pdfDist  = dist </> "pdf"
htmlDist = dist </> "html"
hsDist   = dist </> "hs"
------------------------------------------------------------------------------
-- Shake oracles
------------------------------------------------------------------------------

newtype AgdaDataDir = AgdaDataDir () deriving (Show,Typeable,Eq,Hashable,Binary,NFData)
type instance RuleResult AgdaDataDir = String

addAgdaDataDirOracle :: Rules (AgdaDataDir -> Action String)
addAgdaDataDirOracle = addOracle $ \(AgdaDataDir _) -> init . fromStdout <$> cmd "agda --print-agda-data-dir" :: Action String

------------------------------------------------------------------------------
-- Utilities
------------------------------------------------------------------------------

-- | Map an Agda filepath to a module name.
-- The path is not prepended by extra directories
agdafile2module :: FilePath -> String
agdafile2module = map (\c -> if isPathSeparator c then '.' else c) -- turn path separators to '.'
                  . dropExtensions                                 -- remove the extension

-- | Reads the files imported via the macro \inputagda from a tex file given as
-- a list of lines
getAgdaInputs :: [String] -> [FilePath]
getAgdaInputs =
  let prefix1 = "\\includeAgda{"
      prefix2 = "\\inputAgda{"
  in map init -- remove the trailing "}"
   . map (\l -> drop (length $ if prefix2 `isPrefixOf` l then prefix2 else prefix1) l) -- remove the initial "\i{"
   . filter (\l -> prefix1 `isPrefixOf` l || prefix2 `isPrefixOf` l) -- filter lines that start with "\I{"

-- | UTF8 version of readFileLines
readFileLinesUtf8 :: FilePath -> Action [String]
readFileLinesUtf8 file = do
  need [file]
  text <- TE.decodeUtf8' <$> liftIO (BS.readFile file)
  either (fail . show) (return . map Text.unpack . Text.lines) text

-- | Transform an lagda file to a agda file.
-- discard and copy are mutually recursive:
-- discard runs outside code blocks
-- copy runs inside code blocks
data CodeDelim = CodeDelim {
    begincode :: String,
    endcode   :: String
  }

codeDelimTex :: CodeDelim
codeDelimTex = CodeDelim "\\begin{code}" "\\end{code}"

codeDelimMd :: CodeDelim
codeDelimMd = CodeDelim "```agda" "```"

illiterate :: CodeDelim -> [String] -> [String]
illiterate CodeDelim{..} = discard
  where
    discard, copy :: [String] -> [String]
    discard [] = []
    discard (xs:xss)
      | take (length begincode) xs == begincode = "" : copy xss
      | otherwise                               = discard xss
    copy [] = []
    copy (xs:xss)
      | take (length endcode) xs == endcode = "" : discard xss
      | otherwise                           = xs : copy xss


-- | Nary apply
applyN :: Int -> (a -> a) -> (a -> a)
applyN 0 _ = id
applyN 1 f = f
applyN n f = f . applyN (n - 1) f

-- | Nary versions of {drop,take}Directory1
dropDirectory :: Int -> FilePath -> FilePath
dropDirectory = flip applyN dropDirectory1
