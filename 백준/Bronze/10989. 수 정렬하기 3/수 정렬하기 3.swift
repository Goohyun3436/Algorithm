let n = Int(readLine()!)!
var count = Array(repeating: 0, count: 10_000 + 1)
var answer = ""

for _ in 0..<n {
    let num = Int(readLine()!)!
    count[num] += 1
}

for num in 1...10_000 {
    answer += String(repeating: "\(num)\n", count: count[num])
}

print(answer)