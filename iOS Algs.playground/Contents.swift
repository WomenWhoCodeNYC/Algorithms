import UIKit

func tr(from: String, to: String, test: String) -> String {
    var fromArray = Array(from.characters)
    var toArray = Array(to.characters)
    let testArray = Array(test.characters)
    var testDictionary: [String : String] = [:]
    var stupidNewArray: [String] = []
    var result: String = ""
    if fromArray.count != toArray.count {
        return "Bad from/to string"
    }
    for char in 0..<fromArray.count {
        testDictionary[String(fromArray[char])] = String(toArray[char])
    }
    
    for char in testArray {
        if testDictionary.keys.contains(String(char)) {
            stupidNewArray.append(testDictionary[String(char)]!)
        }
        else {
            stupidNewArray.append(String(char))
        }
    }
    for letter in stupidNewArray {
        result += letter
    }
    return result
}
tr(from: "1a", to: "a1", test: "aax11")

//tr("1a","a1","aax11") => "11xaa"
