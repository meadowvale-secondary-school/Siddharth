/*:
 ## Share the Boogie
 
 BoogieBot has one final feature.
 
 Besides viewing your BoogieBot moves in the assistant editor, you can save an animated GIF of your work so it’s easy to share with your friends.
 
 To do this, add `startRecording()` right after you start your bot:
*/
startBot()
startRecording()

/*: 
 Then add your routine below. When BoogieBot gets to the end of the dance, a Save button appears. Click the button to save your dance routine as an animated GIF.

 Remember, once BoogieBot gets to the end of the routine it will stop. You can use Editor > Execute Playground to see the moves again. Have fun!
*/
// If you're going to send it, sign it.
setBotTitle("Le Dance Tres Good")
setBotSubtitle("You saw it here first!")
// Start the dance!

fabulize()
leftArmUp()
rightArmUp()

leftLegUp()
rightLegUp()
leftLegDown()
rightLegDown()
shakeItLeft()
shakeItRight()
shakeItCenter()
jumpUp()
jumpDown()

leftArmDown()
rightArmDown()
defabulize()


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
//: Next, find out a new term for the work you’ve been doing. 
//:
//:[Previous](@previous)  |  page 7 of 13  |  [Next: Algorithms](@next)
