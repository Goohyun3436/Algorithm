let cond = readLine()!.split(separator: " ").map { Int($0)! }
let n = cond[0]
let m = cond[1]
var words: [String: Int] = [:]

for _ in 0..<n {
    let word = readLine()!
    
    guard word.count >= m else { continue }
    
    words[word, default: 0] += 1
}

let sort = words
    .sorted {
        if $0.value == $1.value {
            if $0.key.count == $1.key.count {
                return $0.key < $1.key
            } else {
                return $0.key.count > $1.key.count
            }
        } else {
            return $0.value > $1.value
        }
    }

for word in sort {
    print(word.key)
}