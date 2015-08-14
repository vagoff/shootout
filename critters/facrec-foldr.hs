import System.Environment

fac n = foldr (*) 1 [1..n]

main = do
    args <- getArgs
    let ( n : _ ) = args
    print (fac (read n))

