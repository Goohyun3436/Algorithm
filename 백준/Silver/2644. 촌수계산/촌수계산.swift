let n = Int(readLine()!)!
let target = readLine()!.split(separator: " ").map { Int($0)! }
let m = Int(readLine()!)!

var adjList: [[Int]] = Array(repeating: [], count: n + 1)
var queue: [Int] = []
var front = 0
var vis: [Int] = Array(repeating: -1, count: n + 1)  //target[0]으로 부터의 거리를 저장

for _ in 0..<m {
    let edge = readLine()!.split(separator: " ").map { Int($0)! }
    adjList[edge[0]].append(edge[1])
    adjList[edge[1]].append(edge[0])
}

queue.append(target[0])
vis[target[0]] = 0

while queue.count >= front + 1 {
    let cur = queue[front]
    front += 1
    
    for degree in adjList[cur] {
        if vis[degree] != -1 { continue }
        queue.append(degree)
        vis[degree] = vis[cur] + 1
    }
}

print(vis[target[1]])