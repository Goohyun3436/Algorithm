let N = Int(readLine()!)!
var rect = Array(repeating: Array(repeating: "", count: N), count: N)
var heart: (Int, Int)? = nil
var answer = Array(repeating: 0, count: 5)

for x in 0..<N {
    let input = readLine()!.map { String($0) }
    
    rect[x] = input
    
    for y in 0..<N {
        if heart == nil && input[y] == "*" {
            heart = (x + 1, y)
            break
        }
    }
}

for y in 0..<N {
    if rect[heart!.0][y] == "_" && y < heart!.1 {
        answer[0] = heart!.1 - (y + 1)
    }
    
    if rect[heart!.0][y] == "_" && y > heart!.1 {
        answer[1] = (y - 1) - heart!.1
        break
    }
}

for x in heart!.0 + 1..<N {
    if rect[x][heart!.1] == "_" {
        answer[2] = (x - 1) - heart!.0
        break
    }
}

for x in heart!.0 + answer[2] + 1..<N {
    if answer[3] == 0 && rect[x][heart!.1 - 1] == "_" {
        answer[3] = (x - 1) - (heart!.0 + answer[2])
    }
    
    if answer[4] == 0 && rect[x][heart!.1 + 1] == "_" {
        answer[4] = (x - 1) - (heart!.0 + answer[2])
    }
}

if answer[0] == 0 {
    answer[0] = heart!.1
}

if answer[1] == 0 {
    answer[1] = (N - 1) - heart!.1
}

if answer[3] == 0 {
    answer[3] = (N - 1) - (heart!.0 + answer[2])
}

if answer[4] == 0 {
    answer[4] = (N - 1) - (heart!.0 + answer[2])
}

print(heart!.0 + 1, heart!.1 + 1)

for length in answer {
    print(length, terminator: " ")
}