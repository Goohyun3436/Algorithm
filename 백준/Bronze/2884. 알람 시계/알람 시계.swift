let input = readLine()!.split(separator:" ").map{Int($0)!}
var H: Int = input[0]
var M: Int = input[1]

M -= 45
if (M < 0) {
    M += 60
    H -= 1
    if (H < 0) { H += 24 }
}
print("\(H) \(M)")