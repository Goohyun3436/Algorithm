var fractions: [[Int]] = Array(repeating: [], count: 2)

fractions[0] = readLine()!.split(separator: " ").map { Int($0)! }
fractions[1] = readLine()!.split(separator: " ").map { Int($0)! }

let sum = sumOfFraction(fractions[0], fractions[1])
let reduction = reductionOfFraction(sum)
print(reduction[0], reduction[1])


//MARK: - Helper
func sumOfFraction(_ a: [Int], _ b: [Int]) -> [Int] {
    guard a.count == 2 && b.count == 2 else { return [] }
    
    let c = a[0] * b[1] + b[0] * a[1]
    let d = a[1] * b[1]
    
    return [c, d]
}

func gcd(_ a: Int, _ b: Int) -> Int {
    var a = a
    var b = b
    var remain = 0
    
    while a % b != 0 {
        remain = a % b
        a = b
        b = remain
    }
    
    return b
}

func reductionOfFraction(_ f: [Int]) -> [Int] {
    guard f.count == 2 else { return f }
    let gcd = gcd(f[0], f[1])
    
    return [f[0] / gcd, f[1] / gcd]
}