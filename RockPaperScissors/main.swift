//
//  main.swift
//  RockPaperScissors
//
//  Created by Aiganym Moldagulova on 30/11/2021.
//

import Foundation
class RPS{
    
}

enum Elements {
    case rock
    case paper
    case scissors
}

var player1: Elements?
var player2: Elements?

func playerSet() -> String{
    var player = readLine()
    if(player == "1"){
        print("You've picked a rock")
    } else if(player == "2"){
        print("You've picked paper")
    } else if(player == "3"){
        print("You've picked scissors")
    } else{
        print("The chosen element does not exist. Your options are 1 for rock, 2 for paper or 3 for scissors")
        player = playerSet()
    }
    return player!
}
func playerELement(_ pl: String) -> Elements{
    var player: Elements?
    if(pl == "1"){
        player = .rock
    } else if(pl == "2"){
        player = .paper
    }
    else{
        player = .scissors
    }
    return player!
}

func play() {
    print("Enter 1 for Rock, 2 for Paper or 3 for Scissors")

    print("Player 1: ")
    let pl1 = playerSet()
    player1 = playerELement(pl1)

    print("Player 2: ")
    let pl2 = playerSet()
    player2 = playerELement(pl2)
    
    switch player1 {
        case .rock:
            if( player2 == .scissors){
                print("Rock beats Scissors. Player1 is the winner")
            } else if(player2 == .paper){
                print("Paper beats Rock. Player2 is the winner")
            } else{
                print("It's a draw")
            }
        case .paper:
            if( player2 == .rock){
                print("Paper beats Rock. Player1 is the winner")
            } else if(player2 == .scissors){
                print("Scissors beat Paper. Player2 is the winner")
            } else{
                print("It's a draw")
            }
        case .scissors:
            if( player2 == .paper){
                print("Scissors beat Paper. Player1 is the winner")
            } else if(player2 == .rock){
                print("Rock beats Scissors. Player2 is the winner")
            } else{
                print("It's a draw")
            }
        default:
            break
    }
    print("Would you like to play again? 1 for Yes, 2 for No")
    let answer = readLine()!
    if(answer == "1"){
        play()
    }
}


print("Hi! Let's play!")
print("__________________________________")
play()
