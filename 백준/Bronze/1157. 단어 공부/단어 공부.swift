let input = readLine()!.uppercased()

var counter = [Character: Int]()
let maxCnt: Int
input.forEach { counter[$0, default: 0] += 1 }
maxCnt = counter.values.max()!

var maxChar: [Character] = []
for (key, value) in counter where value == maxCnt {
    maxChar.append(key)
}

print(maxChar.count > 1 ? "?" : maxChar[maxChar.startIndex])