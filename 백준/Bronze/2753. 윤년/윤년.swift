let year = Int(readLine()!)!

let isLeap: Bool = (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
print(isLeap ? "1" : "0")