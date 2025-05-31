let n = Int(readLine()!)!
var set: Set<String> = []
var list: [String] = []
list.reserveCapacity(n)

for _ in 0..<n {
    set.insert(readLine()!)
}

list = set.sorted {
    $0.count == $1.count ? $0 < $1 : $0.count < $1.count
}

for el in list {
    print(el)
}