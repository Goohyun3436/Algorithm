let cond = readLine()!.split(separator: " ").map { Int($0)! }
let N = cond[0]
let M = cond[1]

var adjList: [[Int]] = Array(repeating: [], count: N + 1)
var queue: [Int] = []
var front = 0
var vis: [Bool] = Array(repeating: false, count: N + 1)

var answer = 0

for _ in 0..<M {
    let nodes = readLine()!.split(separator: " ").map { Int($0)! }
    adjList[nodes[0]].append(nodes[1])
    adjList[nodes[1]].append(nodes[0])
}

queue.append(1)
vis[0] = true
vis[1] = true

while true {
    answer += 1
    
    while queue.count >= front + 1 {
        let cur = queue[front]
        front += 1
        
        for degree in adjList[cur] {
            if vis[degree] { continue }
            vis[degree] = true
            queue.append(degree)
        }
    }
    
    if let index = vis.firstIndex(of: false) {
        front = 0
        queue.append(index)
        vis[index] = true
    } else {
        break
    }
}

print(answer)