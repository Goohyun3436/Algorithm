let n = Int(readLine()!)!
var list: [[Int]] = Array(repeating: [], count: n)

for i in 0..<n {
    list[i] = readLine()!.split(separator: " ").map { Int($0)! }
}

list = list.sorted { $0[1] * 1_000_000 + $0[0] < $1[1] * 1_000_000 + $1[0] }

for el in list {
    print(el[0], el[1])
}