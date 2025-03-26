var count = 0

for _ in 0..<Int(readLine()!)! {
    let word = readLine()!
    if check(word) { count += 1 }
}

print(count)

func check(_ word: String) -> Bool {
    var alphabet = [Character: Bool]()
    var before: Character? = nil
    
    for char in word {
        if before != char {
            guard !alphabet[char, default: false] else {
                return false
            }
            
            alphabet[char] = true
            before = char
        }
    }
    
    return true
}