module Main where
import Control.Applicative
import Data.Char

main :: IO ()
main = interact (unlines . map process . lines)

process :: String -> String
process s = 
    let (x:ys) = words s
        s' :: Char 
        s' = chr . read $ x 
    in (s':' ':concat ys)
