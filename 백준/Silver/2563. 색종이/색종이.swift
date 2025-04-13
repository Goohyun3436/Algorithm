let n = Int(readLine()!)!
let column = Array(repeating: 0, count: 100)
var rect = Array(repeating: column, count: 100)
var answer = 0

for _ in 0..<n {
    let el = readLine()!.split(separator: " ").map { Int($0)! - 1 }
    
    for i in el[0]..<el[0] + 10 {
        for j in el[1]..<el[1] + 10 {
            rect[j][i] = 1
        }
    }
}

for row in rect {
    answer += row.reduce(0, +)
}

print(answer)