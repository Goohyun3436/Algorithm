import Foundation

let t = Int(readLine()!)!
var prime = Array(repeating: false, count: 1_000_001)

for i in 3...1_000_000 {
    prime[i] = isPrime(i)
}

for _ in 0..<t {
    let n = Int(readLine()!)!
    
    guard n != 4 else { print(1); continue }
    
    var answer = 0
    
    for i in stride(from: 3, through: n / 2, by: 2) {
        if prime[i] && prime[n - i] {
            answer += 1
        }
    }
    
    print(answer)
}


//MARK: - Hepler
func isPrime(_ n: Int) -> Bool {
    guard n > 1 else { return false }
    if n == 2 { return true }
    guard n % 2 != 0 else { return false }
    
    let end = Int(sqrt(Double(n)) + 1)
    
    for i in stride(from: 3, through: end, by: 2) {
        if n % i == 0 { return false }
    }
    
    return true
}