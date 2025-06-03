import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
    var n = Int(readLine()!)!
    var next = 0
    
    while next == 0 {
        if isPrime(n) { next = n }
        n += 1
    }
    
    print(next)
}


//MARK: - Helper
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