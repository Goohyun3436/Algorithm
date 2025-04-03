let n = Int(readLine()!)!
var queue = Array(1...n)
var front = 0

while queue.count - front > 1 {
    front += 1
    let top = queue[front]
    front += 1
    queue.append(top)
}

print(queue[front])