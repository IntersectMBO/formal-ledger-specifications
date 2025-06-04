{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeApplications #-}
{-# OPTIONS_GHC -Wunused-imports #-}

-- | Backend for generating highlighted, hyperlinked HTML from Agda sources.

module Main where

import Prelude hiding ((!!), concatMap)

import Control.DeepSeq

import Data.Map (Map)

import GHC.Generics (Generic)

import Agda.Interaction.Options
    ( ArgDescr(ReqArg, NoArg)
    , OptDescr(..)
    , Flag
    )
import Agda.Compiler.Backend (Backend,Backend_boot(..), Backend',Backend'_boot(..), Recompile(..), MonadDebug, Definition, ReadTCState, reportS )
import Agda.Compiler.Common (curIF)

import Control.Monad
import Control.Monad.Trans ( MonadIO(..), lift )
import Control.Monad.Trans.Reader ( ReaderT(runReaderT), ask )

import Data.Foldable (toList, concatMap)
import Data.Maybe
import qualified Data.IntMap as IntMap
import Data.List.Split (splitWhen)
import Data.Text.Lazy (Text)
import qualified Data.Text.Lazy as T

import qualified Network.URI.Encode

import System.FilePath
import System.Directory

import Text.Blaze.Html5
    ( preEscapedToHtml
    , toHtml
    , stringValue
    , Html
    , (!)
    , Attribute
    )
import qualified Text.Blaze.Html5 as Html5
import qualified Text.Blaze.Html5.Attributes as Attr
import Text.Blaze.Html.Renderer.Text ( renderHtml )
  -- The imported operator (!) attaches an Attribute to an Html value
  -- The defined operator (!!) attaches a list of such Attributes

import Paths_fls_agda

import Agda.Interaction.Highlighting.Precise hiding (toList)

import Agda.Syntax.Common
import Agda.Syntax.TopLevelModuleName

import qualified Agda.TypeChecking.Monad as TCM
  ( Interface(..)
  )

import Agda.Utils.Function
import Agda.Utils.List1 (String1, pattern (:|))
import qualified Agda.Utils.List1   as List1
import qualified Agda.Utils.IO.UTF8 as UTF8
import Agda.Syntax.Common.Pretty

import Agda.Utils.Impossible

import Agda.Main ( runAgda )

main = runAgda [Backend flsBackend']

-- | Options for HTML generation

data FlsOpts = FlsOpts
  { flsOptEnabled :: Bool
  , flsOptHtmlDir :: FilePath
  } deriving (Eq, Generic)

instance NFData FlsOpts

newtype FlsCompileEnv = FlsCompileEnv
  { flsCompileEnvOpts :: FlsOpts
  }

data FlsModuleEnv = FlsModuleEnv
  { flsModEnvCompileEnv :: FlsCompileEnv
  , flsModEnvName       :: TopLevelModuleName
  }

data FlsModule = FlsModule
data FlsDef = FlsDef

flsBackend :: Backend
flsBackend = Backend flsBackend'

flsBackend' :: Backend' FlsOpts FlsCompileEnv FlsModuleEnv FlsModule FlsDef
flsBackend' = Backend'
  { backendName           = "FLS"
  , backendVersion        = Nothing
  , options               = initialFlsOpts
  , commandLineFlags      = flsOpts
  , isEnabled             = flsOptEnabled
  , preCompile            = preCompileFls
  , preModule             = preModuleFls
  , compileDef            = compileDefFls
  , postModule            = postModuleFls
  , postCompile           = postCompileFls
  -- --only-scope-checking works, but with the caveat that cross-module links
  -- will not have their definition site populated.
  , scopeCheckingSuffices = True
  , mayEraseType          = const $ return False
  }

initialFlsOpts :: FlsOpts
initialFlsOpts = FlsOpts
  { flsOptEnabled = False
  , flsOptHtmlDir = defaultHTMLDir
  }

-- | The default output directory for HTML.

defaultHTMLDir :: FilePath
defaultHTMLDir = "html"

flsOpts :: [OptDescr (Flag FlsOpts)]
flsOpts =
    [ Option []     ["fls"] (NoArg flsOpt)
                    "generate HTML files with highlighted source code"
    , Option []     ["fls-html-dir"] (ReqArg flsHtmlDirOpt "DIR")
                    ("directory in which HTML files are placed (default: " ++
                     defaultHTMLDir ++ ")")
    ]

flsOpt :: Flag FlsOpts
flsOpt o = return $ o { flsOptEnabled = True }

flsHtmlDirOpt :: FilePath -> Flag FlsOpts
flsHtmlDirOpt d o = return $ o { flsOptHtmlDir = d }

runLogHtmlWithMonadDebug :: MonadDebug m => LogHtmlT m a -> m a
runLogHtmlWithMonadDebug = runLogHtmlWith $ reportS "html" 1

preCompileFls
  :: (MonadIO m, MonadDebug m)
  => FlsOpts
  -> m FlsCompileEnv
preCompileFls opts = runLogHtmlWithMonadDebug $ do
  logHtml $ unlines
    [ "Warning: HTML is currently generated for ALL files which can be"
    , "reached from the given module, including library files."
    ]
  prepareCommonDestinationAssets opts
  return $ FlsCompileEnv opts

preModuleFls
  :: Applicative m
  => FlsCompileEnv
  -> IsMain
  -> TopLevelModuleName
  -> Maybe FilePath
  -> m (Recompile FlsModuleEnv FlsModule)
preModuleFls cenv _isMain modName _ifacePath = pure $ Recompile (FlsModuleEnv cenv modName)

compileDefFls
  :: Applicative m
  => FlsCompileEnv
  -> FlsModuleEnv
  -> IsMain
  -> Definition
  -> m FlsDef
compileDefFls _env _menv _isMain _def = pure FlsDef

postModuleFls
  :: (MonadIO m, MonadDebug m, ReadTCState m)
  => FlsCompileEnv
  -> FlsModuleEnv
  -> IsMain
  -> TopLevelModuleName
  -> [FlsDef]
  -> m FlsModule
postModuleFls _env menv _isMain _modName _defs = do
  let generatePage = defaultPageGen . flsCompileEnvOpts . flsModEnvCompileEnv $ menv
  htmlSrc <- srcFileOfInterface (flsModEnvName menv) <$> curIF
  runLogHtmlWithMonadDebug $ generatePage htmlSrc
  return FlsModule

postCompileFls
  :: Applicative m
  => FlsCompileEnv
  -> IsMain
  -> Map TopLevelModuleName FlsModule
  -> m ()
postCompileFls _cenv _isMain _modulesByName = pure ()

-- | The name of the default CSS file.

defaultCSSFile :: FilePath
defaultCSSFile = "Agda.css"

-- | The name of the default Agda KaTeX JS file.
defaultAgdaKaTeXJsFile :: FilePath
defaultAgdaKaTeXJsFile = "AgdaKaTeX.js"

-- | Determine the generated file extension

highlightedFileExt :: FileType -> String
highlightedFileExt AgdaFileType = "html"
highlightedFileExt MdFileType   = "md"

-- | Internal type bundling the information related to a module source file

data FlsInputSourceFile = FlsInputSourceFile
  { _srcFileModuleName :: TopLevelModuleName
  , _srcFileType :: FileType
  -- ^ Source file type
  , _srcFileText :: Text
  -- ^ Source text
  , _srcFileHighlightInfo :: HighlightingInfo
  -- ^ Highlighting info
  }

-- | Bundle up the highlighting info for a source file

srcFileOfInterface ::
  TopLevelModuleName -> TCM.Interface -> FlsInputSourceFile
srcFileOfInterface m i = FlsInputSourceFile m (TCM.iFileType i) (TCM.iSource i) (TCM.iHighlighting i)

-- | Logging during HTML generation

type HtmlLogMessage = String
type HtmlLogAction m = HtmlLogMessage -> m ()

class MonadLogHtml m where
  logHtml :: HtmlLogAction m

type LogHtmlT m = ReaderT (HtmlLogAction m) m

instance Monad m => MonadLogHtml (LogHtmlT m) where
  logHtml message = do
    doLog <- ask
    lift $ doLog message

runLogHtmlWith :: Monad m => HtmlLogAction m -> LogHtmlT m a -> m a
runLogHtmlWith = flip runReaderT

renderSourceFile :: FlsOpts -> FlsInputSourceFile -> Text
renderSourceFile opts = renderSourcePage
  where
  renderSourcePage (FlsInputSourceFile moduleName fileType sourceCode hinfo) =
    page fileType moduleName pageContents
    where
      tokens = tokenStream sourceCode hinfo
      pageContents = code fileType tokens

defaultPageGen :: (MonadIO m, MonadLogHtml m) => FlsOpts -> FlsInputSourceFile -> m ()
defaultPageGen opts srcFile@(FlsInputSourceFile moduleName ft _ _) = do
  logHtml $ render $ "Generating HTML for"  <+> pretty moduleName <+> (parens (pretty target) <> ".")
  writeRenderedHtml html target
  where
    ext = highlightedFileExt ft
    target = flsOptHtmlDir opts </> modToFile moduleName ext
    html = renderSourceFile opts srcFile

prepareCommonDestinationAssets :: MonadIO m => FlsOpts -> m ()
prepareCommonDestinationAssets options = liftIO $ do
  -- There is a default directory given by 'defaultHTMLDir'
  let htmlDir = flsOptHtmlDir options
  createDirectoryIfMissing True htmlDir

  -- If the default CSS file should be used, then it is copied to
  -- the output directory.
  defCssFile <- getDataFileName $ "data" </> defaultCSSFile
  copyFile defCssFile (htmlDir </> defaultCSSFile)

  defAgdaKaTeXJsFile <- getDataFileName $ "data" </> defaultAgdaKaTeXJsFile
  copyFile defAgdaKaTeXJsFile (htmlDir </> defaultAgdaKaTeXJsFile)

-- | Converts module names to the corresponding HTML file names.

modToFile :: TopLevelModuleName -> String -> FilePath
modToFile m ext = Network.URI.Encode.encode $ render (pretty m) <.> ext

-- | Generates a highlighted, hyperlinked version of the given module.

writeRenderedHtml
  :: MonadIO m
  => Text       -- ^ Rendered page
  -> FilePath   -- ^ Output path.
  -> m ()
writeRenderedHtml html target = liftIO $ UTF8.writeTextToFile target html


-- | Attach multiple Attributes

(!!) :: Html -> [Attribute] -> Html
h !! as = h ! mconcat as

-- | Constructs the web page, including headers.

page :: FileType              -- ^ Whether to reserve literate md
     -> TopLevelModuleName    -- ^ Module to be highlighted.
     -> Html
     -> Text
page fileType
     modName
     pageContent =
  renderHtml $
    case fileType of
      AgdaFileType -> Html5.docTypeHtml $ hdr <> rest
      MdFileType   -> pageContent
  where

    hdr = Html5.head $ mconcat
      [ Html5.meta !! [ Attr.charset "utf-8" ]
      , Html5.title (toHtml . render $ pretty modName)
      , Html5.link !! [ Attr.rel "stylesheet"
                      , Attr.href $ stringValue "https://cdn.jsdelivr.net/npm/katex@0.16.22/dist/katex.min.css"
                      ]
      , Html5.link !! [ Attr.rel "stylesheet"
                      , Attr.href $ stringValue defaultCSSFile
                      ]
      , Html5.script mempty !! [ Attr.src "https://cdn.jsdelivr.net/npm/katex@0.16.22/dist/katex.min.js" ]
      , Html5.script mempty !! [ Attr.src "https://cdn.jsdelivr.net/npm/katex@0.16.22/dist/contrib/auto-render.min.js" ]
      , Html5.script mempty !! [ Attr.src $ stringValue defaultAgdaKaTeXJsFile
                               , Attr.defer mempty ]
      ]

    rest = Html5.body $ (Html5.pre ! Attr.class_ "Agda") pageContent

-- | Position, Contents, Infomation

type TokenInfo =
  ( Int
  , String1
  , Aspects
  )

-- | Constructs token stream ready to print.

tokenStream
     :: Text             -- ^ The contents of the module.
     -> HighlightingInfo -- ^ Highlighting information.
     -> [TokenInfo]
tokenStream contents info =
  map (\ ((mi, (pos, c)) :| xs) ->
            (pos, c :| map (snd . snd) xs, fromMaybe mempty mi)) $
  List1.groupBy ((==) `on` fst) $
  zipWith (\pos c -> (IntMap.lookup pos infoMap, (pos, c))) [1..] (T.unpack contents)
  where
  infoMap = toMap info

-- | Constructs the HTML displaying the code.

code :: FileType -- ^ Source file type
     -> [TokenInfo]
     -> Html
code fileType = mconcat .
  case fileType of
    MdFileType   -> map mkMd . splitByMarkup
    AgdaFileType -> mkCustomHtml
  where

  mkCustomHtml :: [TokenInfo] -> [Html]
  mkCustomHtml = goHtml

  openDelim :: Char
  openDelim = '⟦'

  closeDelim :: Char
  closeDelim = '⟧'

  goHtml :: [TokenInfo] -> [Html]
  goHtml (t@(_, s :| xs,_) :ts)
    -- opening delimiter
    | s == openDelim && null xs = preEscapedToHtml @String "<a class=\"AgdaKaTeX\">$\\begin{pmatrix}" : goInline 1 0 ts
    -- rest
    | otherwise = mkHtml t : goHtml ts
  goHtml [] = []

  goInline :: Int          -- ^ Nesting depth
           -> Int          -- ^ Within parenthesis? (disable comma as a VV delimiter)
           -> [TokenInfo]
           -> [Html]
  goInline d p (t@(pos, xs@(s :| _), mi) :ts)
    -- opening delimiter
    | s == openDelim = "\\begin{pmatrix}" : goInline (d + 1) p ts
    -- closing delimiter
    | s == closeDelim = "\\end{pmatrix}" : if d == 1
                                      -- if depth is 1, this closing delimiter
                                      -- exits inline math mode
                                      then preEscapedToHtml @String "$</a>" : goHtml ts
                                      -- else we are still in inline math mode
                                      else goInline (d-1) p ts
    -- interfield delimiter
    | s == ',' && p == 0 = "\\\\" : goInline d p ts
    | s == ',' && p /= 0 = "," : goInline d p ts

    -- opening and closing parenthesis
    | s == '(' = "(" : goInline d (p + 1) ts
    | s == ')' = ")" : goInline d (p - 1) ts

    | otherwise = makeInlineKaTeX t : goInline d p ts
  goInline d p [] = []

  makeInlineKaTeX :: TokenInfo -> Html
  makeInlineKaTeX (pos, s, mi)
    | mi == mempty = toHtml s
    | otherwise = toHtml . surroundingSpace . href . htmlId . htmlClasses . text $ concatMap fixChars (List1.toList s) -- remove this map fixChars, is too expensive
    where

    fixChars :: Char -> [Char]
    fixChars '_' = ['\\', '_']
    fixChars c   = [c]

    mkTexMacro :: String -> String -> String
    mkTexMacro name s = "\\" ++ name ++ "{" ++ s ++ "}"

    text :: String -> String
    text = mkTexMacro "text"

    htmlId :: String -> String
    htmlId = mkTexMacro ("htmlId{" ++ show pos ++ "}")

    href :: String -> String
    href s =
      case definitionSite mi of
        Nothing -> s
        Just (DefinitionSite m defPos _here _aName) ->
          mconcat [ "\\href{"
                  -- If the definition site points to the top of a file,
                  -- we drop the anchor part and just link to the file.
                  , applyUnless (defPos <= 1)
                     (++ "#" ++
                      Network.URI.Encode.encode (show defPos))
                      -- Network.URI.Encode.encode (fromMaybe (show defPos) aName)) -- Named links disabled
                     (Network.URI.Encode.encode $ modToFile m "html")
                  , "}{", s, "}" ]

    surroundingSpace :: String -> String
    surroundingSpace s = "\\," ++ s ++ "\\,"
    htmlClasses :: String -> String
    htmlClasses s =
      case classes of
        []  -> s
        cls -> mkTexMacro ("htmlClass{" ++ unwords classes ++ "}") s

    classes :: [String]
    classes = concat
      [ concatMap noteClasses (note mi)
      , otherAspectClasses (toList $ otherAspects mi)
      , concatMap aspectClasses (aspect mi)
      ]

    aspectClasses (Name mKind op) = kindClass ++ opClass
      where
      kindClass = toList $ fmap showKind mKind

      showKind (Constructor Inductive)   = "InductiveConstructor"
      showKind (Constructor CoInductive) = "CoinductiveConstructor"
      showKind k                         = show k

      opClass = ["Operator" | op]
    aspectClasses a = [show a]


    otherAspectClasses = map show

    -- Notes are not included.
    noteClasses _s = []

  trd (_, _, a) = a

  splitByMarkup :: [TokenInfo] -> [[TokenInfo]]
  splitByMarkup = splitWhen $ (== Just Markup) . aspect . trd

  mkHtml :: TokenInfo -> Html
  mkHtml (pos, s, mi) =
    -- Andreas, 2017-06-16, issue #2605:
    -- Do not create anchors for whitespace.
    applyUnless (mi == mempty) (annotate pos mi) $ toHtml $ List1.toList s

  backgroundOrAgdaToHtml :: TokenInfo -> Html
  backgroundOrAgdaToHtml token@(_, s, mi) = case aspect mi of
    Just Background -> preEscapedToHtml $ List1.toList s
    Just Markup     -> __IMPOSSIBLE__
    _               -> mkHtml token

  -- The assumption here and in mkOrg is that Background tokens and Agda tokens are always
  -- separated by Markup tokens, so these runs only contain one kind.
  mkMd :: [TokenInfo] -> Html
  mkMd tokens = if containsCode then formatCode else formatNonCode
    where
      containsCode = any ((/= Just Background) . aspect . trd) tokens

      formatCode = Html5.pre ! Attr.class_ "Agda" $ mconcat $ mkCustomHtml tokens
      formatNonCode = mconcat $ backgroundOrAgdaToHtml <$> tokens

  -- Put anchors that enable referencing that token.
  -- We put a fail safe numeric anchor (file position) for internal references
  -- (issue #2756), as well as a heuristic name anchor for external references
  -- (issue #2604).
  annotate :: Int -> Aspects -> Html -> Html
  annotate pos mi =
    applyWhen hereAnchor (anchorage nameAttributes mempty <>) . anchorage posAttributes
    where
    -- Warp an anchor (<A> tag) with the given attributes around some HTML.
    anchorage :: [Attribute] -> Html -> Html
    anchorage attrs html = Html5.a html !! attrs

    -- File position anchor (unique, reliable).
    posAttributes :: [Attribute]
    posAttributes = concat
      [ [Attr.id $ stringValue $ show pos ]
      , toList $ link <$> definitionSite mi
      , Attr.class_ (stringValue $ unwords classes) <$ guard (not $ null classes)
      ]

    -- Named anchor (not reliable, but useful in the general case for outside refs).
    nameAttributes :: [Attribute]
    nameAttributes = [ Attr.id $ stringValue $ fromMaybe __IMPOSSIBLE__ mDefSiteAnchor ]

    classes = concat
      [ concatMap noteClasses (note mi)
      , otherAspectClasses (toList $ otherAspects mi)
      , concatMap aspectClasses (aspect mi)
      ]

    aspectClasses (Name mKind op) = kindClass ++ opClass
      where
      kindClass = toList $ fmap showKind mKind

      showKind (Constructor Inductive)   = "InductiveConstructor"
      showKind (Constructor CoInductive) = "CoinductiveConstructor"
      showKind k                         = show k

      opClass = ["Operator" | op]
    aspectClasses a = [show a]


    otherAspectClasses = map show

    -- Notes are not included.
    noteClasses _s = []

    -- Should we output a named anchor?
    -- Only if we are at the definition site now (@here@)
    -- and such a pretty named anchor exists (see 'defSiteAnchor').
    hereAnchor      :: Bool
    hereAnchor      = here && isJust mDefSiteAnchor

    mDefinitionSite :: Maybe DefinitionSite
    mDefinitionSite = definitionSite mi

    -- Are we at the definition site now?
    here            :: Bool
    here            = maybe False defSiteHere mDefinitionSite

    mDefSiteAnchor  :: Maybe String
    mDefSiteAnchor  = maybe __IMPOSSIBLE__ defSiteAnchor mDefinitionSite

    link (DefinitionSite m defPos _here _aName) = Attr.href $ stringValue $
      -- If the definition site points to the top of a file,
      -- we drop the anchor part and just link to the file.
      applyUnless (defPos <= 1)
        (++ "#" ++
         Network.URI.Encode.encode (show defPos))
         -- Network.URI.Encode.encode (fromMaybe (show defPos) aName)) -- Named links disabled
        (Network.URI.Encode.encode $ modToFile m "html")
