import System.Environment

fac n = product[1..n]

main = do
    args <- getArgs
    let ( n : _ ) = args
    print (fac (read n))
