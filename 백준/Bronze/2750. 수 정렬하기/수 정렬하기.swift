let N = Int(readLine()!)!
var list = Array(repeating: 0, count: N)

for i in 0..<N {
    let num = Int(readLine()!)!
    list[i] = num
}

list.sort()

for num in list {
    print(num)
}