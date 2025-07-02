let factorCnt = Int(readLine()!)!
var factor = readLine()!.split(separator: " ").map { Int($0)! }
factor.sort()

print(solution(factorCnt, factor))


//MARK: - Helper
func solution(_ cnt: Int, _ factor: [Int]) -> Int {
    guard cnt != 1 else {
        return factor[0] * factor[0]
    }
    
    return factor[0] * factor[cnt-1]
}