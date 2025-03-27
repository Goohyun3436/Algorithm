let input = readLine()!
let alphabets = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
                "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
var alphabetCount = [String: Int]()

for alphabet in alphabets {
    alphabetCount[alphabet] = 0
}

for alphabet in input {
    alphabetCount[String(alphabet)]! += 1
}

for alphabet in alphabets {
    print(alphabetCount[alphabet]!, terminator: " ")
}