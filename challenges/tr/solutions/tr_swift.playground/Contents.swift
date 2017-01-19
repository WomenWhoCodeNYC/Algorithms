//: Playground - noun: a place where people can play

import UIKit
func tr(from: String, to: String, test: String) -> String {
    var fromArray = Array(from.characters)
    var toArray = Array(to.characters)
    let testArray = Array(test.characters)
    var testDictionary: [String : String] = [:]
    var newArray: [String] = []
    var result: String = ""
    if fromArray.count != toArray.count {
        return "Bad from/to string"
    }
    for char in 0..<fromArray.count {
        testDictionary[String(fromArray[char])] = String(toArray[char])
    }
    
    for char in testArray {
        if testDictionary.keys.contains(String(char)) {
            newArray.append(testDictionary[String(char)]!)
        }
        else {
            newArray.append(String(char))
        }
    }
    for letter in newArray {
        result += letter
    }
    return result
}
