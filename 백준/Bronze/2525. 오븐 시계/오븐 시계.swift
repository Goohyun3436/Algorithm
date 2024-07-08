var now: [Int] = readLine()!.split(separator:" ").map{ Int($0)! }
let takeTime: Int = Int(readLine()!)!

now[1] += takeTime
now[0] = (now[0] + now[1] / 60) % 24
now[1] %= 60

print("\(now[0]) \(now[1])")