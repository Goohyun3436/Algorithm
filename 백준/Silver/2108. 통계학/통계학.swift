import Foundation

let n = Int(readLine()!)!
var arr: [Int] = .init(repeating: 0, count: n)
var dict: [Int: Int] = [:]

for i in 0..<n {
    let num = Int(readLine()!)!
    arr[i] = num
    dict[num, default: 0] += 1
}

arr.sort()

print(average())
print(mid())
print(mode())
print(range())


//MARK: - Helper
func average() -> Int {
    var res = 0.0
    
    for num in arr {
        res += Double(num)
    }
    
    res /= Double(arr.count)
    
    return Int(round(res))
}

func mid() -> Int {
    return arr[n / 2]
}

func mode() -> Int {
    var list: [Int] = []
    let max = dict.values.max()!
    
    for (key, value) in dict {
        if max <= value {
            list.append(key)
        }
    }
    
    list.sort()
    
    return list.count == 1 ? list[0] : list[1]
}

func range() -> Int {
    return arr.last! - arr.first!
}