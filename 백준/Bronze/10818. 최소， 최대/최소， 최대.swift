let n = Int(readLine()!)!
let input: [Int] = readLine()!.split(separator: " ").map{ Int($0)! }
var max: Int = -1000000, min: Int = +1000000

for num in input {
  if num > max {
    max = num
  }
  if num < min {
    min = num
  }
}
print("\(min) \(max)")