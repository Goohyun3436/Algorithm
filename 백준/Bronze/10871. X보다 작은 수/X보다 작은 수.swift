let cond = readLine()!.split(separator: " ")
let x = Int(cond[1])!
let input: [Int] = readLine()!.split(separator: " ").map{ Int($0)! }
var res: [String] = []

for num in input {
  if num < x {
    res.append("\(num)")
  }
}
print(res.joined(separator: " "))