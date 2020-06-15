/*:
 ## App Exercise - Mile Times and Congratulations
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 The `RunningWorkout` struct below holds information about your users' running workouts. However, you decide to add information about average mile time. Add a computed property called `averageMileTime` that uses `distance` and `time` to compute the user's average mile time. Assume that `distance` is in meters and 1600 meters is a mile.
 
 Create an instance of `RunningWorkout` and print the `averageMileTime` property. Check that it works properly.
 */
struct RunningWorkout {
    var distance: Double // in meters
    var time: Double // in minutes
    var elevation: Double // in meters
    var averageMileTime: Double{
        (time/distance)*1600 // time to run 1 mile
    }
}

var someRun = RunningWorkout(distance: 2200, time: 25, elevation: 40)
print(someRun.averageMileTime)

/*:
 In other app exercises, you've provided encouraging messages to the user based on how many steps they've completed. A great place to check whether or not you should display something to the user is in a property observer.
 
 In the `Steps` struct below, add a `willSet` to the `steps` property that will check if the new value is equal to `goal`, and if it is, prints a congratulatory message. Create an instance of `Steps` where `steps` is 9999 and `goal` is 10000, then call `takeStep()` and see if your message is printed to the console.
 */
struct Steps {
    var steps: Int{
        willSet{
            if goal == newValue{
                print("Congratulations! You achieved your goal of taking \(goal) steps!")
            }
        }
    }
    var goal: Int
    
    mutating func takeStep() {
        steps += 1
    }
}

var todaysSteps = Steps(steps: 9999, goal: 10000)
print(todaysSteps.takeStep())


//: [Previous](@previous)  |  page 8 of 10  |  [Next: Exercise - Type Properties and Methods](@next)
