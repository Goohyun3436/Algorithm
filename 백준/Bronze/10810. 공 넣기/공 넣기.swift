let cond: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m): (Int, Int) = (cond[0], cond[1])
var basket: [String] = Array(repeating: "0", count: n)

for _ in 0 ..< m {
  let input: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
  for i in input[0] ... input[1] {
    basket[i - 1] = String(input[2])
  }
}
print(basket.joined(separator: " "))