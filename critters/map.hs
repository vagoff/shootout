import System.Environment

inc x = x + 1

main = do
    args <- getArgs
    let ( n : _ ) = args
    print $ sum $ map inc [0..read n]

