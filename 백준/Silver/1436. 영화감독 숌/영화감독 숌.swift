let n = Int(readLine()!)!
var num = 665
var titles: [Int] = []
titles.reserveCapacity(n)

while titles.count < n {
    num += 1
    
    var temp = num
    
    while temp >= 666 {
        if temp % 1000 == 666 {
            titles.append(num)
            break
        } else {
            temp /= 10
        }
    }
}

print(titles.last!)