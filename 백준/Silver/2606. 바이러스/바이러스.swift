let n = Int(readLine()!)!
let m = Int(readLine()!)!

var adjList: [[Int]] = Array(repeating: [], count: n + 1)
var queue: [Int] = []
var front = 0
var vis: [Bool] = Array(repeating: false, count: n + 1)

var answer = 0

for _ in 0..<m {
    let edge = readLine()!.split(separator: " ").map { Int($0)! }
    adjList[edge[0]].append(edge[1])
    adjList[edge[1]].append(edge[0])
}

queue.append(1)
vis[1] = true

while queue.count >= front + 1 {
    let cur = queue[front]
    front += 1
    
    for degree in adjList[cur] {
        if vis[degree] { continue }
        queue.append(degree)
        vis[degree] = true
        answer += 1
    }
}

print(answer)