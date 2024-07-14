let str: String = readLine()!
let i: Int = Int(readLine()!)!
let idx: String.Index = str.index(str.startIndex, offsetBy: i - 1)
print(str[idx])