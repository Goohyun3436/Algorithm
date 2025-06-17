while let line = readLine(), line != "." {
    print(isBalance(str: line) ? "yes" : "no")
}

func isBalance(str: String) -> Bool {
    var stack: [Character] = []
    
    for ch in str {
        switch ch {
        case "(", "[":
            stack.append(ch)
        case ")", "]":
            guard pop(ch, with: &stack) else { return false }
        default:
            continue
        }
    }
    
    return stack.isEmpty
}

func pop(_ ch: Character, with stack: inout [Character]) -> Bool {
    guard !stack.isEmpty else { return false }
    let el = stack.removeLast()
    if (ch == ")" && el != "(") || (ch == "]" && el != "[") { return false }
    return true
}