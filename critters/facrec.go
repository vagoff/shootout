package main

import "fmt"

func fac(n uint64) uint64 {
    if n == 1 {
        return 1
    }
    return n * fac(n - 1)
}

func main() {
    fmt.Printf("Factorial: %d", fac(20))
}
