let n = Int(readLine()!)!
print(factorial(n))

func factorial(_ n: Int) -> Int {
    guard n != 0 else { return 1 }
    guard n > 1 else { return n }
    return n * factorial(n - 1)
}