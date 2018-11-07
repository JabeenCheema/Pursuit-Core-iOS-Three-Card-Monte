//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var card1: UIButton!
    @IBOutlet weak var card2: UIButton!
    @IBOutlet weak var card3: UIButton!
    @IBOutlet weak var label: UILabel!

    
    var cardsArray = [UIImage.init(named: "kingCard")!, UIImage.init(named: "threeCard")!, UIImage.init(named: "threeCard")!]
    
  override func viewDidLoad() {
    super.viewDidLoad()
  }

    
@IBAction func cardWillFlip(mySender: UIButton) {
    cardsArray = cardsArray.shuffled()

    switch mySender.tag {
    case 1:
        card1.setImage(cardsArray[0], for: .normal)
        if cardsArray[0] == UIImage(named: "kingCard") {
            print("You win")
            label.text = "You win!"
        } else {
            print("you a loser")
            label.text = "You lost"
        }
        card1.isEnabled = false
        card2.isEnabled = false
        card3.isEnabled = false
        
    case 2:
        card2.setImage(cardsArray[1], for: .normal)
        if cardsArray[1] == UIImage(named: "kingCard") {
            label.text = "You win!"
        } else {
            label.text = "You lost!"
        }
        card1.isEnabled = false
        card2.isEnabled = false
        card3.isEnabled = false
      
    case 3:
        card3.setImage(cardsArray[2], for: .normal)
        if cardsArray[2] == UIImage(named: "kingCard") {
           label.text = "You win!"
        } else {
            label.text = "You lost!"
        }
        card1.isEnabled = false
        card2.isEnabled = false
        card3.isEnabled = false
      
    default:
        print("Invalid")
        
    }
    
    for numOfcard in 0..<cardsArray.count {
        if cardsArray[numOfcard] == UIImage(named: "kingCard") {
            if numOfcard == 0{
                card1.setImage(cardsArray[0], for: .normal)
            }
            if numOfcard == 1{
                card2.setImage(cardsArray[1], for: .normal)
            }
            if numOfcard == 2 {
                card3.setImage(cardsArray[2], for: .normal)
            }
        }
    
    }
    }
    @IBAction func playAgain(_ sender: UIButton) {
        card1.isEnabled = true
card1.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        card2.isEnabled = true
card2.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        card3.isEnabled = true
card3.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
    
        
    }
   


}
