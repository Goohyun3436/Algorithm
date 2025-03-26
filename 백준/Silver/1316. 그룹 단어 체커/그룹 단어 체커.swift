var count = 0

for _ in 0..<Int(readLine()!)! {
    let word = readLine()!
    if check(word) { count += 1 }
}

print(count)

func check(_ word: String) -> Bool {
    var alphabetSet = Set<String>()
    var alphabetCount = 0
    var before = ""
    
    for character in word {
        let str = String(character)
        
        if before != str {
            before = str
            alphabetSet.insert(str)
            alphabetCount += 1
            
            if alphabetSet.count != alphabetCount {
                return false
            }
        }
    }
    return true
}