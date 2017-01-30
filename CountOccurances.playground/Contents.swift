import UIKit

//Count Occurances - goal is to count how often a certain value appears in an array. 

// Initially you'd want to go through the array and check each item using linear search but this would be O(n)


func countOccurances<T: Hashable>(_ array: [T], key: T) -> Int {
    var dictionary = [T : Int]()

    for item in array {

        if item == key {
            dictionary[key] = (dictionary[key] ?? 0) + 1
        }
    }

    return dictionary[key] ?? 0
}



// You can also create an extension on array where elements are hashable 


extension Array where Element: Hashable {

    var occurances: [Element: Int] {
        var result = [Element : Int]()

        forEach { result[$0] = (result[$0] ?? 0) + 1}
        return result
    }

    func occurrances(of element: Element) -> Int  {
        return occurances[element] ?? 0
    }

}


let a = [ 0, 1, 1, 3, 3, 3, 3, 6, 8, 10, 11, 11 ]


a.occurrances(of: 11)