module Main where
import Data.Char.AsciiFlatten
import qualified Data.Text as T
import qualified Data.Text.IO as T
import Data.Char

main :: IO ()
main = 
    T.getContents >>=
    return . (T.map asciiFlattenCI) >>=
    T.putStr

