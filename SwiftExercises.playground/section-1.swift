import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    let favorite = "My favorite cheese is " + cheese
    return favorite
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."

/*

Arrays & Dictionaries

*/

let numberArray = [1, 2, 3, 4, 5]
// Add 5 to this array
// WORK HERE

let numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four", 5 : "five"]
// Add 5 : "five" to this dictionary
// WORK HERE

/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
for i in 1...10 {
    println(i)
}

// Use a half-closed range loop to print 1 - 10, inclusively
for j in 1..<10 {
    println(j)
}


let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:[[String:String]]) -> [String] {
    var drinks = [String]();
    for i in characters {
        drinks.append(i["favorite drink"]!)
    }

    return drinks
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let items = ["milk", "eggs", "bread", "challah"]

func combineArray(items: [String]) -> String {
    return ";".join(items)
}

let itemOutput = combineArray(items)

/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

var reversed = sorted(cerealArray, { s1, s2 in return s1 > s2 })



