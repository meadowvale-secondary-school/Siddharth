/*:
 ## Exercise: Karaoke Host

 You have a friend who loves singing karaoke with a big group of people. The karaoke singers add songs they’d like to sing to a list and the karaoke host calls out the songs one by one. 
 
 Your friend and has asked you to write software to help manage the song list.

 - callout(Exercise):
 Create an empty array to hold song titles as strings, and use the `append` method to add three or four songs one at a time.
 */
var songList = [String]()

songList.append("Airplanes")
songList.append("We are the champions")
songList.append("Legendary")
print(songList)

/*:
 - callout(Exercise):
 One enthusiastic singer wants to add three songs at once. Create an array holding this one singer's song list and use the `+=` operator to append their whole list to the end of the group's song list.
 */
songList += ["Not afraid", "Seven nation army", "Digital"]
print(songList)



/*:
 - callout(Exercise):
 Write a `for…in` loop and, for every song title in the array, print an encouraging announcement to let the next singer know that it's their turn.
 */

for song in songList {
    let nextSong = song
    print("And now, ladies and gentlemen it is time to jam to \(nextSong)!")
}




/*:
 - callout(Exercise):
 After the loop has called everyone up to sing, use the `removeAll` method on the song list to clear out all the past songs.
 */
songList.removeAll()




//: [Previous](@previous)  |  page 14 of 17  |  [Next: Exercise: Counting Votes](@next)
