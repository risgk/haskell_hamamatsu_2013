import System.Environment
import System.IO
import Data.List

main :: IO()
main = do
    args <- getArgs
    let s = (args !! 0)
    f <- readFile (args !! 1)
    putStrLn `mapM_` (filter (isInfixOf s) (lines f))
