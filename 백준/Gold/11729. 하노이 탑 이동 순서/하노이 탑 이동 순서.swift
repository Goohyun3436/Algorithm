let n = Int(readLine()!)!
var answer: String = ""
var count: Int = 0

towerOfHanoi(from: 1, to: 3, count: n)

func towerOfHanoi(from a: Int, to b: Int, count n: Int) {
    if n == 0 { return }
    towerOfHanoi(from: a, to: 6 - a - b, count: n - 1)
    count += 1
    answer += "\(a) \(b)\n"
    towerOfHanoi(from: 6 - a - b, to: b, count: n - 1)
}

print(count)
print(answer)