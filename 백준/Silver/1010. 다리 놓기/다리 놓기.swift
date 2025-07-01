var answer = Array(repeating: Array(repeating: 0, count: 30), count: 30)

for m in 1..<30 {
    for n in 0...m {
        if n == 0 || n == m {
            answer[m][n] = 1
            continue
        }
        
        answer[m][n] = answer[m-1][n-1] + answer[m-1][n]
    }
}

let t = Int(readLine()!)!

for _ in 0..<t {
    let cond = readLine()!.split(separator: " ").map { Int($0)! }
    let n = cond[0]
    let m = cond[1]

    print(answer[m][n])
}