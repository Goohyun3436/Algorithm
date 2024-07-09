let total: Int = Int(readLine()!)!
let N: Int = Int(readLine()!)!
var items: [[Int]] = []
for _ in 0 ..< N { items.append(readLine()!.split(separator: " ").map { Int($0)! }) }

var check: Int = 0
for item in items {
    check += item[0] * item[1]
}
print(total == check ? "Yes" : "No")