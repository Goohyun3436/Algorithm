var submitIds: [String] = []
while let i = readLine() { submitIds.append(i) }

let ids: [String] = [Int](1 ... 30).map{ String($0) }
let targetIds: Set<String> = Set(ids).subtracting(Set(submitIds))

print(targetIds.joined(separator: "\n"))