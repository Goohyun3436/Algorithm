let a = readLine()!
let b = readLine()!

var alphabets = Array(repeating: 0, count: 26)
var answer = 0

for unit16 in a.utf16 {
    alphabets[Int(unit16) - 97] += 1
}

for unit16 in b.utf16 {
    alphabets[Int(unit16) - 97] -= 1
}

alphabets.forEach { answer += abs($0) }

print(answer)