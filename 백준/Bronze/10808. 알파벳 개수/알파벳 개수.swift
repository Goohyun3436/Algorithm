let input = readLine()!

var alphabets = Array(repeating: 0, count: 26)

for unit16 in input.utf16 {
    alphabets[Int(unit16) - 97] += 1
}

for count in alphabets {
    print(count, terminator: " ")
}
