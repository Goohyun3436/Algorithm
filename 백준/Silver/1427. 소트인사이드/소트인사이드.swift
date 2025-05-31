let n = readLine()!
var count = Array(repeating: 0, count: 10)
var answer = ""

for ch in n {
    count[Int(String(ch))!] += 1
}

for num in stride(from: 9, through: 0, by: -1) {
    answer += String(repeating: "\(num)", count: count[num])
}

print(answer)