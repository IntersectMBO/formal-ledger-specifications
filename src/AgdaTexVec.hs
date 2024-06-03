module AgdaTexVec where

import System.Environment (getArgs)
import System.Exit (exitFailure)
import Data.List (isInfixOf)
import Control.Monad (forM_)
import System.IO

-- write a list of lines to a file
writeFileLines :: FilePath -> [String] -> IO ()
writeFileLines filename lines = do
    withFile filename WriteMode $ \h -> forM_ lines (hPutStrLn h)

-- read a file into a list of lines
readFileLines :: FilePath -> IO [String]
readFileLines filename = do
    contents <- readFile filename
    return (lines contents)

-- split a list into two at the point where a string occurs
getTo :: String -> [String] -> ([String], [String])
getTo str lines = getToTR [] lines
  where
    getToTR acc [] = (acc, [])
    getToTR acc (x:xs)
      | str `isInfixOf` x = (acc ++ [x], xs)
      | otherwise = getToTR (acc ++ [x]) xs

-- get a vector element
getVecElem :: [String] -> ([String], [String])
getVecElem lines = getVecElemTR [] lines
  where
    getVecElemTR acc [] = (acc, [])
    getVecElemTR acc (x:xs)
      | "AgdaInductiveConstructor{⟧" `isInfixOf` x || "AgdaInductiveConstructor{,}" `isInfixOf` x = (acc, x:xs)
      | otherwise = getVecElemTR (acc ++ [x]) xs

-- format a vector block
formatVector :: [String] -> [String]
formatVector vectorBlock = formatVectorTR vectorBlock prefix
  where
    prefix = ["%START VEC%", "\\(\\left(\\begin{array}{c}%"]
    suffix = ["\\end{array}\\right)\\)%", "%END VEC%"]

    formatVectorTR [] acc = acc ++ suffix
    formatVectorTR (x:xs) acc
      | x == "\\\\" || x == "\\>[0][@{}l@{\\AgdaIndent{0}}]%" = formatVectorTR xs acc
      | "AgdaInductiveConstructor{⟧" `isInfixOf` x || "--@END@vec" `isInfixOf` x = acc ++ suffix
      | "AgdaInductiveConstructor{⟦}}" `isInfixOf` x || "AgdaInductiveConstructor{,}" `isInfixOf` x =
          let (nexElm, rest) = getVecElem xs
          in formatVectorTR rest (acc ++ ["\\begin{code}[inline]\\text{"] ++ nexElm ++ ["}\\end{code}\\\\%"])
      | otherwise = formatVectorTR xs acc

rmSuffix :: [String] -> String -> [String]
rmSuffix lines str = if last lines == str then init lines else lines

processVectorLine :: [String] -> [String]
processVectorLine lines = processVectorLineTR lines prefix "\\begin{code}[inline]%"
  where
    prefix = ["%START VEC LINE%", "\\begin{code}[inline]\\AgdaIndent{0}%"]
    suffix = ["\\end{code}%", "%END VEC LINE%"]
    processVectorLineTR :: [String] -> [String] -> String -> [String]
    processVectorLineTR [] acc _ = acc
    processVectorLineTR (x:xs) acc prevLine
      | "--@BEGIN@vec" `isInfixOf` x =
          let (vectorBlock, rest) = getTo "--@END@vec" (drop 1 xs)
          in processVectorLineTR (drop 1 rest) 
                            ((rmSuffix acc "\\\\") ++ ["\\end{code}\\AgdaSpace{}"] ++ formatVector (drop 1 vectorBlock) ++ ["\\AgdaSpace{}\\begin{code}[inline]"]) 
                            "\\begin{code}[inline]"
      | "--@END@vecline" `isInfixOf` x = acc ++ suffix
      | "\\begin{code}" `isInfixOf` x && "\\begin{code}" `isInfixOf` prevLine = 
          processVectorLineTR xs (acc) prevLine
      | otherwise = processVectorLineTR xs (acc ++ [x]) x


processLines :: [String] -> [String]
processLines lines = processLinesTR lines [] ""
  where
    processLinesTR :: [String] -> [String] -> String -> [String]
    processLinesTR [] acc _ = acc
    processLinesTR (x:xs) acc prevLine
      | "--@BEGIN@vecline" `isInfixOf` x =
          let (vectorLine, rest) = getTo "--@END@vecline" (drop 1 xs)
          in processLinesTR (drop 1 rest)
                            ((rmSuffix acc "\\\\") ++ ["\\end{code}"] ++ processVectorLine (drop 1 vectorLine) ++ ["\\begin{code}"]) 
                            "\\begin{code}"
      | "\\begin{code}" `isInfixOf` x && "\\begin{code}" `isInfixOf` prevLine = 
          processLinesTR xs (acc) prevLine
      | otherwise = processLinesTR xs (acc ++ [x]) x

-- Main function
main :: IO ()
main = do
    args <- getArgs
    if length args /= 2
        then do
            putStrLn "Usage: ./Agda2Vec /path/to/inputFile.tex /path/to/outputFile.tex"
            exitFailure
        else do
            let inFilePath = args !! 0
            let outFilePath = args !! 1
            lines <- readFileLines inFilePath
            let processedLines = processLines lines
            writeFileLines outFilePath processedLines
