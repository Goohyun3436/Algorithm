let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0]
let b = input[1]

print(lcm(a, b))

//MARK: - Helper
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

func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}