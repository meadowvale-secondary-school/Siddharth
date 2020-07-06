/*:
 ## Exercise - Type Casting and Inspection
 
 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
let myArray: [Any] = [5, 7.2, "hello", true, 11.5, 17.3, "world", "swift", 20, 199, false, true]
print(myArray)
/*:
 Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 */
for item in myArray{
    if let anInt = item as? Int{
        print("This integer has a valuye of \(anInt)")
    }else if let aString = item as? String{
        print("This string says \(aString)")
    }else if let aBool = item as? Bool{
        print("This boolean is \(aBool)")
    }else if let aDouble = item as? Double{
        print("This double has a value of \(aDouble)")
    }
}

/*:
 Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
 */
let someDictionary: [String: Any] = ["First" : "app development", "Second" : 672.4, "Third" : 999, "Fourth" : true ]

print(someDictionary)
/*:
 Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
 */
var total: Double = 0
for (_, value) in someDictionary{
    if let intValue = value as? Int{
        total += Double(intValue)
    }else if let doubleValue = value as? Double{
        total += doubleValue
    }else if let stringValue = value as? String{
        total += 1
    }else if let boolValue = value as? Bool{
        if boolValue{
            total += 2
        }else{
            total -= 3
        }
    }
}
print(total)
/*:
 Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
 */
var total2: Double = 0
for (_, value) in someDictionary{
    if let intValue = value as? Int{
        total2 += Double(intValue)
    }else if let doubleValue = value as? Double{
        total2 += doubleValue
    }else if let stringValue = value as? String, let numericalValue = Double(stringValue){
        total2 += numericalValue
}
}
print(total2)

//: page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
