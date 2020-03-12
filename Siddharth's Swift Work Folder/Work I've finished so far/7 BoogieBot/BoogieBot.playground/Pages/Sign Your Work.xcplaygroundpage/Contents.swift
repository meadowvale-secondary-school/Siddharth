/*:
 ## Sign Your Work
 
 BoogieBot also has an API for personalizing the moves you’ve created.
 
 Give your bot a title:
 
 `setBotTitle("My Awesome Dance")`
 
 And a subtitle. This is a chance to add your name:
 
 `setBotSubtitle("By The Boogiemaster")`
*/
startBot()
setBotTitle("Everyday Evening Disco")
setBotSubtitle("By Siddharth Muralikrishnan")

func doTheDisco() {
    fabulize()
    leftArmUp()
    leftArmDown()
}
func doTheDiscoOpposite() {
    rightArmUp()
    shakeItLeft()
    rightArmDown()
    shakeItCenter()
}

startBot()
fabulize()
doTheDisco()
doTheDisco()
doTheDisco()
doTheDiscoOpposite()
doTheDiscoOpposite()
doTheDiscoOpposite()

//: - callout(Exercise): Set your own title and subtitle for your BoogieBot dance.
//:
//: Next, learn how to share the dances you make with your friends.
//:
//:[Previous](@previous)  |  page 6 of 13  |  [Next: Share the Boogie](@next)
