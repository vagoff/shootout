extern crate num;

use num::{BigUint, One, FromPrimitive};

fn factorial(n: usize) -> BigUint {
    let mut f: BigUint = One::one();
    for i in 1..(n+1) {
        let bu: BigUint = FromPrimitive::from_usize(i).unwrap();
        f = f * bu;
    }
    f
}

fn main() {
    println!("{}", factorial(1000));
}
