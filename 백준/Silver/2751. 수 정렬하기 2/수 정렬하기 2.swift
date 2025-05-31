let n = Int(readLine()!)!
var list = Array(repeating: 0, count: n)

for i in 0..<n {
    let num = Int(readLine()!)!
    list[i] = num
}

list.sort()

for el in list {
    print(el)
}