import System.Environment
import Text.Regex

main :: IO()
main = do
    args <- getArgs
    let s = (args !! 0)
    let r = (args !! 1)
    i <- readFile (args !! 2)
    putStrLn (subRegex (mkRegex s) i r)
