let n = Int(readLine()!)!
var tree = Array(repeating: 0, count: n)
var dis = Array(repeating: 0, count: n - 1)

for i in 0..<n {
    let pos = Int(readLine()!)!
    tree[i] = pos
}

for i in 0..<n - 1 {
    dis[i] = tree[i + 1] - tree[i]
}

var answer = 0
let gcd_ = gcd(nums: dis)
for d in dis {
    answer += (d / gcd_) - 1
}
print(answer)


//MARK: - Helper
func gcd(_ a: Int, _ b: Int) -> Int {
    var a = a
    var b = b
    var remain = 0
    
    while a % b != 0 {
        remain = a % b
        a = b
        b = remain
    }
    
    return b
}

func gcd(nums: [Int]) -> Int {
    var nums = nums
    var front = 0
    
    while front < nums.count - 1 {
        let a = nums[front]
        let b = nums[front + 1]
        nums[front + 1] = gcd(a, b)
        front += 1
    }
    
    return nums[front]
}