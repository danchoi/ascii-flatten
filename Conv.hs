module Main where
import Control.Applicative
import Data.Char

main :: IO ()
main = interact (unlines . map process . lines)

process :: String -> String
process s = 
    let (x:[y]:_) = words s
        s' :: Char 
        s' = chr . read $ x 
        y' = if isUpper s' 
             then toUpper y 
             else y
    in (s':' ':[y'])
