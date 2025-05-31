let _ = readLine()
var dict: [Int: Int] = [:]
let list = readLine()!.split(separator: " ").map { Int($0)! }
let sorted = Set(list).sorted()

for (idx, num) in sorted.enumerated() {
    dict[num, default: 0] = idx
}

for num in list {
    print(dict[num]!, terminator: " ")
}