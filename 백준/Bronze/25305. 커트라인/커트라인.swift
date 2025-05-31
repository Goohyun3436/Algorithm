let cond = readLine()!.split(separator: " ").map { Int($0)! }
let n = cond[0]
let k = cond[1]

var scores = readLine()!.split(separator: " ").map { Int($0)! }
scores.sort()

print(scores[n - k])