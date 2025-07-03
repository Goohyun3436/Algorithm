let n = Int(readLine()!)!
var temp: Set<String> = []
var answer: Int = 0

for _ in 0..<n {
    let line = readLine()!
    
    guard line != "ENTER" else {
        answer += temp.count
        temp.removeAll()
        continue
    }
    
    temp.insert(line)
}

if !temp.isEmpty {
    answer += temp.count
}

print(answer)