var remains: Set<Int> = []

while let i = readLine() { remains.insert(Int(i)! % 42) }

print(remains.count)