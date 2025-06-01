let t = Int(readLine()!)!

for _ in 0..<t {
    var input = readLine()!.split(separator: " ").map { Int($0)! }
    input.sort()
    
    let a = input[0]
    let b = input[1]
    
    var divisor: [Int] = a == 1 ? [a] : [1, a]
    var last: Int = 0
    
    for i in stride(from: a - 1, through: 2, by: -1) {
        let quotient = a / i
        let remain = a % i
        
        if last == quotient { break }
        
        if remain == 0 {
            divisor.append(quotient)
            divisor.append(i)
            last = i
        }
    }
    
    divisor.sort()
    
    for d in divisor {
        let multiple = b * d
        
        if multiple % a == 0 {
            print(multiple)
            break
        }
    }
}
