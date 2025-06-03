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
    guard n >= 2 else { return false }
    
    for i in 2..<Int(sqrt(Double(n)) + 1) {
        if n % i == 0 { return false }
    }
    
    return true
}