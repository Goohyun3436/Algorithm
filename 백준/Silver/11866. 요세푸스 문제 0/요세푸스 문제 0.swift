let cond = readLine()!.split(separator: " ").map { Int($0)! }
let n = cond[0]
let k = cond[1]
var list = Array(1...n)
var index = k - 1

var answer = Array(repeating: "", count: n)

for i in 0..<n-1 {
    answer[i] = "\(list.remove(at: index))"
    
    index = index - 1 + k
    
    if index >= list.count { index %= list.count }
}

answer[n-1] = "\(list.removeLast())"

print("<\(answer.joined(separator: ", "))>")