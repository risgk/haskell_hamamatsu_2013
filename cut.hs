import System.Environment

split :: String -> [String]
split s = case dropWhile (== '\t') s of
              "" -> []
              s' -> x : split s''
                  where (x, s'') = break (== '\t') s'

main :: IO()
main = do
    s <- getContents
    args <- getArgs
    let n = read (args !! 0) - 1 :: Int
    putStrLn $ (split s) !! n
