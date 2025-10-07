
/// The Following function returns Inteer coorecspong to Roman numeral
/// Input: String
/// Process: See if the index and index + 1 are in incemental, if not substrasct index from index + i
/// Space complexity : n

func romantoInteger(_ s: String) -> Int {
    var result: Int = 0
    let romanValues: [Character: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
    let n = s.count
    let stringArray = Array(s)
    var i = 0
    while i < n {
        if i < n - 1 , let lead = romanValues[stringArray[i]], let tail = romanValues[stringArray[i + 1]], lead < tail {
            result += tail - lead
            i += 2
        }
        else if let lead = romanValues[stringArray[i]] {
            result += lead
            i += 1
        }
     }
    return result
}

print("IVII  \(romantoInteger("IVII"))")
print("MCMLXXXIV  \(romantoInteger("MCMLXXXIV"))")
