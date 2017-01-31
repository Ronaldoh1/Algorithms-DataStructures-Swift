
import UIKit

//Challenge 1. 

//Write a function that accepts a string as its only parameter and returns true if the string has only unique letters, taking letter case into acccount


func hasDupiclates(_ input: String) -> Bool {
    let charactersSet = Set(input.characters)
    return charactersSet.count == input.characters.count
}


hasDupiclates("No Duplicates")
hasDupiclates("Hello World")


//Challenge 2.

//Write a function that accepts a String as its only paramter, and return true if the String reads the same when reversed, ignoring cases.

func isPalindrome(_ input: String) -> Bool {
    let characters = Array(input.lowercased().characters.reversed())
    return characters == Array(input.lowercased().characters)
}



isPalindrome("Rotator")
isPalindrome("Never odd or even")

// Challenge 3

//Do two strings contain the same characters

func containSameCharacters(_ string1: String, _ string2: String) -> Bool {
    return Array(string1.characters).sorted() == Array(string2.characters).sorted()
}


containSameCharacters("abca", "abca")
containSameCharacters("abc", "cba")
containSameCharacters("abc", "Abc")



// Challenge 4

// Write your own method of the contains method on String that ignores letter case and without usign the existing contains() method


extension String {

    func contains2(_ input: String) -> Bool {
        let array = self.components(separatedBy: " ")
        return array.contains(input)
    }
}

let someStr = "Hello, world"

someStr.contains2("Hello")


extension String {

    func containsUsingRanges(_ input: String) -> Bool {
       return (self.lowercased().range(of: input.lowercased()) != nil)
    }
}



someStr.containsUsingRanges("Hello")


//challenge 5

func countNumberOfOccurances(of char: Character, string: String) -> Int {

    let characters = Array(string.characters)

    var count = 0

    for letter in characters {
        if letter == char {
         count += 1
        }
    }

    return count
}

countNumberOfOccurances(of: "a", string: "The rain in Spain")

// a more clever 

func countNumberOfOccurances(in string: String, char: Character) -> Int {
    return string.characters.reduce(0) {
        $1 == char ? $0 + 1 : $0
    }
}



//Challenge #6 

//Remove duplicate letters from a string. Write a function that accepts a strung and returns the same string with just duplicate letters removed. 


func removeDuplicateLetters(in input: String) -> String {
    let characters = Set(input.characters.sorted())

    return String(characters)
}

removeDuplicateLetters(in: "Mississippi")
removeDuplicateLetters(in: "hello")


// Challenge #7 

func removeExtraWhiteSpaces(in text: String) -> String? {

    guard text.characters.count > 0 else {
        return nil
    }

    return text.replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil)
}


removeExtraWhiteSpaces(in: "This      is  Ronald")


//Challenge 8
// Write a function that accepts two strings and returns true if one string is rotation of the other

    //example hello  ohell is a rotation 
    // hellohello

func isRotatedString(_ string: String, _ string2: String) -> Bool {
    return (string + string).contains(string2)
}


// test 

isRotatedString("hello", "ohell")


//Challenge 9

//Write a function that returns true if it is given a string that is pangrams. Ignores letter cases


func isPangrams(_ text: String) -> Bool {
    let set = Set(text.lowercased().characters)
    let letters = set.filter { $0 >= "a" && $0 <= "z" }
    return letters.count == 26

}


// Challenge 10 

func countVowelsAndConsonants(_ input: String) -> (Int, Int) {
    let vowels = "aeiou".characters
    let consonants = "bcdfghjklmnpqrstvwxyz".characters

    var vowelCount = 0
    var consonantCount = 0

    for letter in input.lowercased().characters {

        if vowels.contains(letter) {
            vowelCount += 1
        } else if consonants.contains(letter) {
            consonantCount += 1
        }
    }

    return (vowelCount, consonantCount)
}


countVowelsAndConsonants("Mississippi")


func addNumbersInString(_ input: String) {
    guard input.characters.count > 0 else {
        return
    }

    let  numbers = Array(input.components(separatedBy: NSCharacterSet.decimalDigits.inverted))

    print(numbers)

}


func addDigits(in input: String) -> Int {
    let digitsOnly = input.components(separatedBy: CharacterSet.letters).joined(separator: "")
    let array = Array(digitsOnly.characters).map { Int(String($0))! }

    return array.reduce(0, +)
}

addNumbersInString("1hau23k")

addDigits(in: "1hau23k")