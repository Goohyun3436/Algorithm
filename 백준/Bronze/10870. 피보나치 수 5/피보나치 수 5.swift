let n = Int(readLine()!)!

print(fibo(n))

func fibo(_ n: Int) -> Int {
    guard n != 0 else { return 0 }
    guard n != 1 else { return 1 }
    return fibo(n - 2) + fibo(n - 1)
}