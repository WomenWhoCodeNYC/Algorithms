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

func translate(from:String, to:String, test:String)-> String {
    var translatedString = ""
    let fromArray = Array(from.characters)
    let toArray = Array(to.characters)
    var testArray = Array(test.characters)
    var finalArray  = [String]()
    var dictionary = [String:String]()
    var testKey = ""
    var testValue = ""
    if fromArray.count != toArray.count {
        return "The 'from' and 'to' are not the same length."
    } else {
        for (index, character) in fromArray.enumerated() {
            testKey = String(fromArray[index])
            testValue = String(toArray[index])
            dictionary[testKey] = testValue
        }
    }
    //["b": "2", "a": "1", "c": "3"]
    for (key, value) in dictionary {
        //["d", "c", "b", "a"]
        for (index, char) in testArray.enumerated() {
            if String(char) == key {
                testArray[index] = Character(value)
                print(testArray)
            }
        }
    }
    for char in testArray {
        translatedString.append(char)
    }
    return translatedString
}

print(translate(from: "1a", to: "a1", test: "11xaa"))