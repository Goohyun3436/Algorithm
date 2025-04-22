let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
var k = input[1]
var coins = Array(repeating: 0, count: n)
var count = 0

for i in 0..<n {
    let coin = Int(readLine()!)!
    coins[i] = coin
}

for coin in coins.reversed() {
    guard k != 0 else { break }
    
    count += k / coin
    k %= coin
}

print(count)