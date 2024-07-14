var submitIds: [String] = []
while let i = readLine() { submitIds.append(i) }

var targetIds: [String] = []
for sId in 1 ... 30 where !submitIds.contains(String(sId)) {
  targetIds.append(String(sId))
}

print(targetIds.joined(separator: "\n"))