var list = Array(repeating: 0, count: 5)
var sum = 0
var average = 0
var mid = 0

for i in 0..<5 {
    let num = Int(readLine()!)!
    list[i] = num
    sum += num
}

list.sort()

average = sum / 5
mid = list[2]

print(average)
print(mid)