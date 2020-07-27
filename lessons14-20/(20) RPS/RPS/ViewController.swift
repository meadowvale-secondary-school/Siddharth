//
//  ViewController.swift
//  RPS
//
//  Created by Student on 2020-04-13.
//  Copyright © 2020 Siddharth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var computerTurn: UILabel!
    @IBOutlet weak var gameState: UILabel!
    @IBOutlet weak var playerTurnRock: UIButton!
    @IBOutlet weak var playerTurnPaper: UIButton!
    @IBOutlet weak var playerTurnScissors: UIButton!
    @IBOutlet weak var playAgain: UIButton!
    
    var currentGameState: GameState = GameState.start
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resetScreen()
    }
    
    func resetScreen() {
        computerTurn.text = "🤖"
        gameState.text = "Rock, Paper or Scissors?"
        playerTurnRock.isHidden = false
        playerTurnRock.isEnabled = true
        playerTurnPaper.isHidden = false
        playerTurnPaper.isEnabled = true
        playerTurnScissors.isHidden = false
        playerTurnScissors.isEnabled = true
        playAgain.isHidden = true
    }
    
    func play(playerTurn: Sign) {
        playerTurnRock .isEnabled = false
        playerTurnPaper .isEnabled = false
        playerTurnScissors .isEnabled = false
        
        let opponent = randomSign()
        computerTurn.text = opponent.emoji
        
        currentGameState = playerTurn.Turn(opponent: opponent)
        
        switch currentGameState {
        case .draw:
            gameState.text = "It's a draw."
        case .win:
            gameState.text = "Nice, you win!"
        case .lose:
            gameState.text = "Aww, you lose!"
        case .start:
            gameState.text = "Rock, Paper, or Scissors?"
        }
        switch playerTurn {
        case .rock:
            playerTurnRock.isHidden = false
            playerTurnPaper.isHidden = true
            playerTurnScissors.isHidden = true
        case .paper:
            playerTurnRock.isHidden = true
            playerTurnPaper.isHidden = false
            playerTurnScissors.isHidden = true
        case .scissors:
            playerTurnRock.isHidden = true
            playerTurnPaper.isHidden = true
            playerTurnScissors.isHidden = false
        }
        playAgain.isHidden = false
    }

    @IBAction func rockSelected(_ sender: Any) {
        play(playerTurn: Sign.rock)
    }
    
    @IBAction func paperSelected(_ sender: Any) {
        play(playerTurn: Sign.paper)
    }
    
    @IBAction func scissorsSelected(_ sender: Any) {
        play(playerTurn: Sign.scissors)
    }
    
    @IBAction func playAgainSelected(_ sender: Any) {
        resetScreen()
    }
    
}

