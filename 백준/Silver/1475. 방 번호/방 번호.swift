let n = readLine()!
var count = Array(repeating: 0, count: 10)

for char in n {
    count[Int(String(char))!] += 1
}

count[6] = (count[6] + count[9] + 1) / 2
count[9] = 0

print(count.max()!)