var now: [Int] = readLine()!.split(separator:" ").map{ Int($0)! }
let takeTime: Int = Int(readLine()!)!

now[1] += takeTime

if (now[1] > 59) {
    now[0] += Int(now[1] / 60)
    now[1] %= 60    
    if (now[0] > 23) { now[0] -= 24 }
}
print("\(now[0]) \(now[1])")