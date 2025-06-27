let n = Int(readLine()!)!

print(factorial(n: n))


//MARK: - Helper
func factorial(n: Int) -> Int {
    guard n != 0 else { return 1 }
    
    var res = 1
    
    for i in 1...n {
        res *= i
    }
    
    return res
}