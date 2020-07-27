/*:
 ## Exercise: Goals

Think of a goal of yours that can be measured in progress every day, whether it’s minutes spent exercising, number of photos sent to friends, hours spent sleeping, or number words written for your novel.

 - callout(Exercise): Create an array literal with 20 to 25 items of sample data for your daily activity. It may be something like `let milesBiked = [3, 7.5, 0, 0, 17 ... ]` Feel free to make up or embellish the numbers, but make sure you have entries that are above, below and exactly at the goal you've thought of. _Hint: Make sure to choose the right kind of array for your data, whether `[Double]` or `[Int]`._
*/
let milesBiked = [13, 21, 5, 16, 7, 4, 2, 0, 15, 1, 22, 17, 20, 11, 14, 14, 16, 18, 9, 7, 15, 22, 32, 15, 12]
//: - callout(Exercise): Write a function that takes the daily number as an argument and returns a message as a string. It should return a different message based on how close the number comes to your goal. You can be as ambitious and creative as you'd like with your responses, but make sure to return at least two different messages depending on your daily progress!
func goalAchieved(distance: Int, day: Int) {
    let goal = 30
    print("Day \(day): You're goal is to bike 30+ miles")
    print("You biked \(distance) miles today")
    if distance < (goal - 25){
        print("C'mon, you can do better!")
    } else if distance < (goal - 15){
        print("You're getting there! keep going!")
    } else if distance < (goal - 5) {
        print("Keep going! you're almost there!")
    } else if distance == goal{
        print("You did it! You achieved your goal!")
    } else if distance > goal{
        print("Amazing! YOU SURPASSED YOU'RE GOAL!!!")
    }
    print("         ~           ")
    print("         ~           ")
    print("         ~           ")
}



//: - callout(Exercise): Write a `for…in` loop that loops over your sample data, calls your function to get an appropriate message for each item, and prints the message to the console.
var day = 0
for amount in milesBiked{
    day += 1
    let distance = amount
    goalAchieved(distance: distance, day: day)
}



//: [Previous](@previous)  |  page 16 of 17  |  [Next: Exercise: Screening Messages](@next)
