let t = Int(readLine()!)!
var clothesDict = [String: Int]()

for _ in 0..<t {
    let n = Int(readLine()!)!
    
    for _ in 0..<n {
        let clothes = readLine()!.split(separator: " ")
        clothesDict[String(clothes[1]), default: 0] += 1
    }
    
    var answer = 1
    
    for count in clothesDict.values {
        answer *= count + 1
    }
    
    print(answer - 1)
    
    clothesDict.removeAll()
}