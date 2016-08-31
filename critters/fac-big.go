// How to build & run:
// $ go build -o fac-big-go fac-big.go && time ./fac-big-go > res-fac-big-go
// for go-v1.7
package main

import (
    "fmt"
    "math/big"
)

func main() {
    fmt.Println(factorial(1000000))
}

func factorial(n int64) *big.Int {
    x := new(big.Int)
    x.MulRange(1, n)
    return x
}
