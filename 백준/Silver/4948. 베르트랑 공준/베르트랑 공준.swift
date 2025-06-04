import Foundation

while let input = readLine(), input != "0" {
    let n = Int(input)!
    var count = 0
    
    for i in n+1...2*n {
        if isPrime(i) { count += 1 }
    }
    
    print(count)
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