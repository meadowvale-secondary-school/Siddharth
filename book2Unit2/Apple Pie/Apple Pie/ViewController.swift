//
//  ViewController.swift
//  Apple Pie
//
//  Created by Student on 2020-05-22.
//  Copyright © 2020 Siddharth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var treeImageView: UIImageView!
    
    @IBOutlet weak var correctWordLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
        
    @IBOutlet var letterButtons: [UIButton]!
    
    
    
    var listOfWords = ["dog", "athletics", "sprinting", "apps", "astronomy", "program"]
    let incorrectMovesAllowed = 7
    var totalWins = 0
    var totalLosses = 0
    var currentGame: Game!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        newRound()
    }
    
  

    @IBAction func buttonPressed(_ sender: UIButton) {
        sender.isEnabled = false
        let letterString = sender.title(for: .normal)!
        let letter = Character(letterString.lowercased())
        currentGame.playerGuessed(letter: letter)
        updateGameState()
    }
 
   func newRound() {
         if !listOfWords.isEmpty {
             let newWord = listOfWords.removeFirst()
             currentGame = Game(word: newWord,
             incorrectMovesRemaining: incorrectMovesAllowed,
             guessedLetters: [])
             enableLetterButtons(true)
             updateUI()
         } else {
             enableLetterButtons(false)
         }
     }
     
     func enableLetterButtons(_ enable: Bool) {
       for button in letterButtons {
         button.isEnabled = enable
       }
     }
   
     
     func updateGameState() {
       if currentGame.incorrectMovesRemaining == 0 {
         totalLosses += 1
       } else if currentGame.word == currentGame.formattedWord {
         totalWins += 1
       } else {
         updateUI()
       }
     }
     
     func updateUI() {
         var letters = [String]()
         for letter in currentGame.formattedWord {
             letters.append(String(letter))
            }
         let wordWithSpacing = letters.joined(separator: " ")
         correctWordLabel.text = wordWithSpacing
         scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
         treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
       }
     }



