let n = Int(readLine()!)!
var list: [[Int]] = Array(repeating: [], count: n)

for i in 0..<n {
    list[i] = readLine()!.split(separator: " ").map { Int($0)! }
}

list = list.sorted { $0[0] * 1_000_000 + $0[1] < $1[0] * 1_000_000 + $1[1] }

for el in list {
    print(el[0], el[1])
}