import System.IO

main :: IO()
main = do
    s <- getContents
    let n = length $ words s
    putStr $ show n
