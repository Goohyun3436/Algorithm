let size = readLine()!.split(separator: " ")
let (N, M) = (Int(size[0])!, Int(size[1])!)
var answer = ""

let row = Array(repeating: 0, count: M)
var matrix = Array(repeating: row, count: N)

for j in 0..<N {
    let row = readLine()!.split(separator: " ")
    
    for i in 0..<M {
        matrix[j][i] += Int(row[i])!
    }
}

for j in 0..<N {
    let row = readLine()!.split(separator: " ")
    
    for i in 0..<M {
        answer += "\(matrix[j][i] + Int(row[i])!) "
    }
    
    answer += "\n"
}

print(answer)