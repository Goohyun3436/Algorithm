let n = Int(readLine()!)!
var stack: [Int] = []

for _ in 0..<n {
    if let output = run(readLine()!, with: &stack) {
        print(output)
    }
}


//MARK: - Helper
func run(_ cmd: String, with stack: inout [Int]) -> Int? {
    switch cmd {
    case "2":
        return stack.isEmpty ? -1 : stack.removeLast()
    case "3":
        return stack.count
    case "4":
        return stack.isEmpty ? 1 : 0
    case "5":
        return stack.isEmpty ? -1 : stack.last!
    default:
        stack.append(Int(cmd.split(separator: " ").last!)!)
        return nil
    }
}