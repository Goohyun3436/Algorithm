let n: Int = Int(readLine()!)!

for i in stride(from: 0, to: n, by: 1) {
    print(String(repeating: " ", count: n - i - 1) + "*" + String(repeating: "**", count: i))
}
for i in stride(from: n - 2, to: -1, by: -1) {
    print(String(repeating: " ", count: n - i - 1) + "*" + String(repeating: "**", count: i))
}