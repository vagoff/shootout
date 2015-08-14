import System.Environment

fac x = if x < 2 then 1 else x * fac (x - 1)

main = do
    args <- getArgs
    let ( n : _ ) = args
    print (fac (read n))
