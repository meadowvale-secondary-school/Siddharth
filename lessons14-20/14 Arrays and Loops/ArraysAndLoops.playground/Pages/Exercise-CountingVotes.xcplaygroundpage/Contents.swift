/*:
 ## Exercise: Counting Votes
 
 You're implementing a poll app for your class. You start with a basic yes-no question counter and now you have your first batch of answers back, parsed into arrays below.
 
 This is a lot of data! But don't worry too much about the long arrays. Whether you're planning to loop over two items or two thousand, you’ll write the loop in exactly the same way.
 */
let shouldMascotChangeVotes: [Bool] = [false, false, false, true, false, true, true, true, false, true, true, true, true, false, true, true, false, true, true, true, false, true, true, true, true, true, true, true, false, true, false, true, false, true, true, false, false, true, true, false, false, true, true, true, false, true, false, true, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, false, true, true, true, false, true, true, false, false, true, false, true, true, false, false, false, true, false, true, true, false, true, true, true, true, true, true, true, false, true, false, true, false, true, true, true, true, true, true, true, false, true, true, false, true, true, true, true, true, true, true, false, true, true, false, true, true, false, true, true, true, true, true, false, false, false, false, true, true, true, false, true, true, false, false, true, false, false, true, true, true, true, false, true, true, true, true, false, true, true, false, true, false, false, true, true, false, true, false, false, false, true, false, false, false, true, false, true, true, false, true, true, false, true, true, true, false, false, false, true, false, true, false, true, true, true, true, false, true, false, false, true, true, true, true, true, false]

let shouldInstallCoffeeVendingMachineVotes: [Bool] = [true, true, false, false, false, true, true, false, true, true, true, true, false, true, false, false, true, false, true, false, true, true, false, false, false, false, false, true, true, true, false, false, true, true, false, true, true, true, true, false, true, false, true, true, false, false, false, false, false, false, true, false, true, true, false, true, true, true, true, false, false, true, true, false, false, false, false, true, true, false, false, true, true, true, true, false, false, true, true, false, true, false, true, false, true, true, true, false, true, true, true, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, true, true, false, true, false, true, true, true, false, false, false, false, false, false, true, true, false, false, true, true, true, true, true, true, false, false, false, true, true, true, true, false, false, false, true, true, false, true, true, true, false, false, true, false, true, false, true, false, false, true, false, true, true, true, true, true, true, true, false, true, false, true, true, false, false, true, false, false, true, false, false, false, true, false, true, true, true, false, false, false, false, false, false, true, false, true, false, true, true, false, false, false, true]

let shouldHaveMorePollOptionsVotes: [Bool] = [false, false, true, true, false, true, false, false, false, false, false, false, true, false, true, true, false, true, true, false, false, true, true, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false, false, true, true, false, true, true, false, true, false, true, true, false, false, false, false, true, false, true, true, false, false, false, false, true, true, true, true, false, true, false, false, true, true, false, false, false, false, false, false, true, true, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, true, true, true, true, true, false, false, true, false, true, false, false, false, true, false, true, true, true, true, true, true, true, false, false, false, false, true, false, false, false, false, false, true, false, false, true, false, false, true, false, false, true, false, false, true, false, false, true, false, false, false, false, false, true, false, false, false, false, false, false, true, true, true, false, true, false, false, false, false, false, false, false, false, true, true, true, true, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, false, true, true, false, false]

//:This is too many votes to tally quickly by hand, so you’ll write some code to tally it for you.
//:
//: - note:\
//: This is also a lot of votes for Swift to use type inference to determine what kind of array it has. The type annotation is written in the array literals above to tell Swift the type of array. This prevents the playground from running slowly.

//: - callout(Exercise): Create two variables, one to count `yes` votes and one to count `no` votes. Each should start off with a value of zero.
//:
var yesVotes = 0
var noVotes = 0

//: - callout(Exercise): Create a `for…in` loop that loops over one of the vote collections and checks the value of each vote. If the vote is `true`, the loop should add one vote to the `yes` variable. If it's `false`, it should add one vote to the `no` variable.
func voteCounter(votes: [Bool]){
    for vote in votes {
        if vote{
            yesVotes += 1
        } else{
            noVotes += 1
        }
    }
    print("the number of people who voted yes is \(yesVotes) and the number of people who voted no is \(noVotes).")
}

voteCounter(votes: shouldMascotChangeVotes)


//: - callout(Exercise): After the loop has finished, write an `if` statement that compares the two values and prints a different message based on whether the vote passed or failed.
if yesVotes > noVotes {
    print("The mascot will change")
} else if yesVotes < noVotes {
    print("The mascot will not change")
} else{
    print("It was a draw! We must have a second vote")
}


//: - callout(Exercise): Test your code by calling the `for…in` loop on each of the vote collections.\
//:Which measures won by popular vote?

voteCounter(votes: shouldInstallCoffeeVendingMachineVotes)

if yesVotes > noVotes {
    print("We will install a coffee vending machine")
} else if yesVotes < noVotes {
    print("We will not install a coffee vending machine")
} else{
    print("It was a draw! We must have a second vote")
}




voteCounter(votes: shouldHaveMorePollOptionsVotes)

if yesVotes > noVotes {
    print("We will increase the numebr of poll options")
} else if yesVotes < noVotes {
    print("We will not increase the number of poll options")
} else{
    print("It was a draw! We must have a second vote")
}

/*:
 ### Extension:
 Your `for…in` loop would be even more powerful if you could easily reuse it. The easiest way to reuse code is to put it in a function.

 - callout(Exercise): Write a function that takes two arguments: a string describing the issue being voted on and an array with the issue's `Bool` votes. Move the `for…in` loop and the `if` statement *inside* the function, so it prints the results when you call the function with a particular issue's arguments. You should be able to call the function like this:
 ```
 printResults(forIssue: "Should we change the mascot?", withVotes:shouldMascotChangeVotes)
 ```
 A message like this should be printed to the console:\
 `Should we change the mascot? 54 yes, 23 no`
 */
// Add your vote-processing function here:

// I put the original for in loop inside a function to begin with





//: [Previous](@previous)  |  page 15 of 17  |  [Next: Exercise: Goals](@next)
