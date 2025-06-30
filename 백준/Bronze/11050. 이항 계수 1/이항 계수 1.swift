let cond = readLine()!.split(separator: " ").map { Int($0)! }
let n = cond[0]
let k = cond[1]

print(binomialC(n: n, k: k))


//MARK: - Helper
func binomialC(n: Int, k: Int) -> Int {
    return factorial(n: n) / (factorial(n: n - k) * factorial(n: k))
}

func factorial(n: Int) -> Int {
    guard n != 0 else { return 1 }
    
    var res = 1
    
    for i in 1...n {
        res *= i
    }
    
    return res
}