//: Playground - noun: a place where people can play

import UIKit

/*
 
 tr
 
 tr (translate or transliterate) is a common shell program used to replace certain characters in a string with others. It's probably installed in your shell. You can test it out:
 
 tr abc ABC <<<charles
 should produce
 
 ChArles
 tr takes three arguments: from, to, and str. Each of these is given as a string. The output is str, except with every character that appears in from translated to the corresponding character in str. Your challenge is to implement this as a function in the language of your choice, without using built-in string manipulation functions.
 
 Test cases:
 
 tr("abc","123","dcba") => "d321"
 
 tr("abc","123","LOBSTER") => "LOBSTER"
 
 tr("123", "abc", "bad") => "bad"
 
 tr("1a","a1","aax11") => "11xaa"
 
 
 Bonus points:
 
 Does your implementation modify str in-place, or does it create a new string? Modifying it in-place saves memory, but loses the content of the original string. Try writing an alternate implementation that works the other way.
 
 */

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

print(translate(from: "abc", to: "123", test: "dcba"))


//should return "d321"






