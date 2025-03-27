let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{ Int($0)! }
let x = Int(readLine()!)!

var vis: [Bool] = Array(repeating: false, count: 2000000 + 2)
var answer = 0

for element in input {
    vis[element] = true
}

for element in input {
    guard x > element else { continue }
    if vis[x - element] { answer += 1 }
}

print(answer / 2)