let input: String = readLine()!
print(findPalindrome(str: input) ? 1 : 0)

func findPalindrome(str: String) -> Bool {
    for i in 0 ..< str.count / 2 {
        let left: Character = str[str.index(str.startIndex, offsetBy: i)]
        let right: Character = str[str.index(str.startIndex, offsetBy: str.count - i - 1)]

        if left != right {
            return false
        }
    }
    return true
}