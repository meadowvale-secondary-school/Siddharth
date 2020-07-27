//
//  Sign.swift
//  RPS
//
//  Created by Student on 2020-04-13.
//  Copyright © 2020 Siddharth. All rights reserved.
//

import Foundation
import GameplayKit

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> Sign {
    let sign = randomChoice.nextInt()
    
    if  sign == 0 {
        return .rock
    } else if sign == 1{
        return .paper
    } else {
        return .scissors
    }
}


enum Sign {
    case rock, paper, scissors

    var emoji: String {
        switch self{
        case .rock:
            return "👊"
        case .paper:
            return "✋"
        case .scissors:
            return "✌️"
    }
    
}
    func Turn(opponent: Sign) -> GameState {
        switch self {
        case .rock:
            switch opponent {
            case .rock:
                return GameState.draw
            case .paper:
                return GameState.lose
            case .scissors:
                return GameState.win
            }
            
        case .paper:
            switch opponent {
            case .rock:
                return GameState.win
            case .paper:
                return GameState.draw
            case .scissors:
                return GameState.lose
            }
            
        case .scissors:
            switch opponent {
            case .rock:
                return GameState.lose
            case .paper:
                return GameState.win
            case .scissors:
                return GameState.draw
            }
        }
    }
}
