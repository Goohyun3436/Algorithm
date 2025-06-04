import Foundation

let cond = readLine()!.split(separator: " ").map { Int($0)! }
let m = cond[0]
let n = cond[1]

for n in m...n {
    if isPrime(n) { print(n) }
}

func isPrime(_ n: Int) -> Bool {
    guard n > 1 else { return false }
    if n == 2 { return true }
    guard n % 2 != 0 else { return false }
    
    let sqrt_ = Int(sqrt(Double(n)) + 1)
    
    for i in stride(from: 3, through: sqrt_, by: 2) {
        if n % i == 0 { return false }
    }
    
    return true
}