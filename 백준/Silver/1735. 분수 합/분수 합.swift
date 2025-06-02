var nums: [[Int]] = Array(repeating: [], count: 2)

for i in 0..<2 {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    nums[i] = [input[0], input[1]]
}

let sum = sumOfFraction(nums[0], nums[1])
let reduction = reductionOfFraction(sum)
print(reduction[0], reduction[1])


//MARK: - Helper
func sumOfFraction(_ a: [Int], _ b: [Int]) -> [Int] {
    guard a.count == 2 && b.count == 2 else { return [] }
    
    var a = a
    var b = b
    
    let denominator1 = a[1]
    let denominator2 = b[1]
    
    a[0] *= denominator2
    a[1] *= denominator2
    
    b[0] *= denominator1
    b[1] *= denominator1
    
    return [a[0] + b[0], a[1]]
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

func reductionOfFraction(_ fraction: [Int]) -> [Int] {
    guard fraction.count == 2 else { return fraction }
    let gcd = gcd(fraction[0], fraction[1])
    
    return [fraction[0] / gcd, fraction[1] / gcd]
}