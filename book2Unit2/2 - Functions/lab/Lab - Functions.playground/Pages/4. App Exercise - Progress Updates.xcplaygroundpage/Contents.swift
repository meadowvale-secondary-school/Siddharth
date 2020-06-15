/*:
 ## App Exercise - Progress Updates
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 In many cases you want to provide input to a function. For example, the progress function you wrote in the Functioning App exercise might be located in an area of your project that doesn't have access to the value of `steps` and `goal`. In that case, whenever you called the function, you would need to provide it with the number of steps that have been taken and the goal for the day so it can print the correct progress statement.
 
 Rewrite the function `progressUpdate`, only this time give it two parameters of type `Int` called `steps` and `goal`, respectively. Like before, it should print "You're off to a good start." if steps is less than 10% of goal, "You're almost halfway there!" if steps is less than half of goal, "You're over halfway there!" if steps is less than 90% of goal, "You're almost there!" if steps is less than goal, and "You beat your goal!" otherwise. Call the function and observe the printout.
 
 Call the function a number of times, passing in different values of `steps` and `goal`. Observe the printouts and make sure what is printed to the console is what you would expect for the parameters passsed in.
 */
let goal = 10000

func progressUpdate(stepsTaken: Int, targetAmount: Int) {
    if stepsTaken < (targetAmount/10){
        print("You're off to a good start!")
    } else if stepsTaken < (targetAmount/2){
        print("You're almost halfway there!")
    } else if stepsTaken < ((targetAmount/10)*9){
        print("You're over halfway there!")
    } else if stepsTaken < (targetAmount){
        print("You're almost there!")
    } else{
        print("You beat you're goal! Nice work!")
    }
}

progressUpdate(stepsTaken: 500, targetAmount: goal)
progressUpdate(stepsTaken: 2000, targetAmount: goal)
progressUpdate(stepsTaken: 6000, targetAmount: goal)
progressUpdate(stepsTaken: 9500, targetAmount: goal)
progressUpdate(stepsTaken: 10000, targetAmount: goal)
progressUpdate(stepsTaken: 11000, targetAmount: goal)

/*:
 Your fitness tracking app is going to help runners stay on pace to reach their goals. Write a function called pacing that takes four `Double` parameters called `currentDistance`, `totalDistance`, `currentTime`, and `goalTime`. Your function should calculate whether or not the user is on pace to hit or beat `goalTime`. If yes, print "Keep it up!", otherwise print "You've got to push it just a bit harder!"
 */
func pacing(currentDistance: Double, totalDistance: Double, currentTime: Double, totalTime: Double) {
    let currentSpeed = currentDistance/currentTime
    let neededSpeed = totalDistance/totalTime
    if currentSpeed >= neededSpeed{
        print("Keep it up!")
    }else{
        print("You've got to push it just a bit harder!")
    }
}

pacing(currentDistance: 500, totalDistance: 10000, currentTime: 5, totalTime: 50)
pacing(currentDistance: 5000, totalDistance: 10000, currentTime: 50, totalTime: 102)


//: [Previous](@previous)  |  page 4 of 6  |  [Next: Exercise - Return Values](@next)
