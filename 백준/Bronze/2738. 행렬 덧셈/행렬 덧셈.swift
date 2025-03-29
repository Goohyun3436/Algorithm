let size = readLine()!.split(separator: " ")
let M = Int(size[0])!
let N = Int(size[1])!
var answer = ""

let row = Array(repeating: 0, count: N)
var matrix = Array(repeating: row, count: M)

for j in 0..<M {
    let row = readLine()!.split(separator: " ")
    
    for i in 0..<N {
        matrix[j][i] += Int(row[i])!
    }
}

for j in 0..<M {
    let row = readLine()!.split(separator: " ")
    
    for i in 0..<N {
        answer += "\(matrix[j][i] + Int(row[i])!) "
    }
    
    answer += "\n"
}

print(answer)