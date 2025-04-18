let t = Int(readLine()!)!

for _ in 0..<t {
    let n = Int(readLine()!)!
    var clothesDict = [String: Int]()
    
    for _ in 0..<n {
        let clothes = readLine()!.split(separator: " ")
        clothesDict[String(clothes[1]), default: 1] += 1
    }
    
    var answer = 1
    
    for count in clothesDict.values {
        answer *= count
    }
    
    print(answer - 1)
}