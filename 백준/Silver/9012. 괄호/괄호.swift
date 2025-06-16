let t = Int(readLine()!)!

for _ in 0..<t {
    print(isVPS(readLine()!) ? "YES" : "NO")
}

func isVPS(_ str: String) -> Bool {
    var stack: [Character] = []
    
    for ch in str {
        if ch == "(" {
            stack.append(ch)
        } else {
            guard !stack.isEmpty else { return false }
            
            stack.removeLast()
        }
    }
    
    return stack.isEmpty
}