let T = Int(readLine()!)!
var answer = Array(repeating: "", count: T)

for t in 0..<T {
    let remain = Int(readLine()!)!
    
    let q = remain / 25
    let d = remain % 25 / 10
    let n = remain % 25 % 10 / 5
    let p = remain % 5
    
    answer[t] = "\(q) \(d) \(n) \(p)"
}

print(answer.joined(separator: "\n"))