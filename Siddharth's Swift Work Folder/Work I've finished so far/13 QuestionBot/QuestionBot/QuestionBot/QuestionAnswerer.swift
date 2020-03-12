struct MyQuestionAnswerer {
    func responseTo(question: String) -> String {
        
        let questionLower = question.lowercased()

        if questionLower.hasPrefix("hello"){
            return "Why, hello there!"
        } else if questionLower == "where are the cookies?" {
            return "In the cookie jar!"
        } else if questionLower.hasPrefix("where"){
            return "Check Apple maps"
        } else if questionLower.hasPrefix("can"){
            return "Let me think about it!"
        } else if questionLower.hasPrefix("what"){
            return "Hmmm... I'm not sure"
        } else if questionLower.hasPrefix("who"){
            return "Either me or you ;)"
        }else if questionLower.hasPrefix("why"){
            return "The answer is life!"
        }else if questionLower.hasPrefix("how"){
            return "By Trying!"
        }else if questionLower.hasPrefix("when"){
            return "At a specific time :)"
        }else{
            return "Maybe!"
        }
    }
}

