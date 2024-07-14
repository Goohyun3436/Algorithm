let cond: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m): (Int, Int) = (cond[0], cond[1])
var basket: [String] = Array(1 ... n).map { String($0) }

for _ in 0 ..< m {
  let input: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
  basket.swapAt(input[0] - 1, input[1] - 1)
}
print(basket.joined(separator: " "))