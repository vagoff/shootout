function fac(x::BigInt)
    if x < 2
        return 1
    end
    return x * fac(x - 1)
end

print(fac(BigInt(100999)))
