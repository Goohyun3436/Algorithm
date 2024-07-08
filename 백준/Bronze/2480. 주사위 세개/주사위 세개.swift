let nums: [Int] = readLine()!.split(separator:" ").map{ Int($0)! }

var counter = [Int: Int]()
for num in nums {
    counter[num, default: 0] += 1
}

let count: Int = counter.values.max()!
let num: Int = counter.first{ $0.value == count }!.key

if (count == 3) {
    print(10000 + num * 1000)
} else if (count == 2) {
    print(1000 + num * 100)
} else {
    print(nums.max()! * 100)
}