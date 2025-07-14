let n = Int(readLine()!)!

for _ in 0..<n {
    let s = readLine()!.map { $0 }
    var count = 0
    print(isPalindrome(s, &count), count)
}

func isPalindrome(_ s: [Character], _ count: inout Int) -> Int {
    return recursion(s, 0, s.count-1, &count)
}

func recursion(_ s: [Character], _ l: Int, _ r: Int, _ count: inout Int) -> Int {
    count += 1
    
    if l >= r {
        return 1
    } else if s[l] != s[r] {
        return 0
    } else {
        return recursion(s, l+1, r-1, &count)
    }
}