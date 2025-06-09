let k = Int(readLine()!)!
var stack: [Int] = []

for _ in 0..<k {
    run(Int(readLine()!)!, with: &stack)
}

print(stack.reduce(0, +))


//MARK: - Helper
func run(_ input: Int, with stack: inout [Int]) {
    switch input {
    case 0:
        stack.removeLast()
    default:
        stack.append(input)
    }
}