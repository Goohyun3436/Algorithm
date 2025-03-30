var max = 0
var (row, column) = (1, 1)

for row_idx in 0..<9 {
    let row_ = readLine()!.split(separator: " ")
    
    for column_idx in 0..<9 {
        if let num = Int(row_[column_idx]), num > max {
            max = num
            row = row_idx + 1
            column = column_idx + 1
        }
    }
}

print("""
\(max)
\(row) \(column)
""")