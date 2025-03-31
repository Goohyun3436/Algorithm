var answer = Array(repeating: "", count: 15)

for _ in 0..<5 {
    let row = readLine()!
    
    for (columnIdx, column) in row.enumerated() {
        answer[columnIdx] += "\(column)"
    }
}

print(answer.joined())