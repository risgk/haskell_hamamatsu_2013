import System.IO

main :: IO()
--- main = putStr =<< getContents
main = getContents >>= putStr
