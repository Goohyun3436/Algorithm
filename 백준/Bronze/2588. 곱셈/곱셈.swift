let A: Int = Int(readLine()!)!
let B: [Int] = readLine()!.map{Int(String($0))!}

print(A * B[2])
print(A * B[1])
print(A * B[0])
print(A * ((B[2]) + (B[1] * 10) + (B[0] * 100)))