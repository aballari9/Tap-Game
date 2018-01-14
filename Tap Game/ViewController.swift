//
//  ViewController.swift
//  Tap Game
//
//  Created by Akhila Ballari on 8/29/17.
//  Copyright © 2017 Akhila Ballari. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var playerTwoLabel: UILabel!
    @IBOutlet weak var playerOneLabel: UILabel!
    
    var playerOneScore:Int = 0
    var playerTwoScore:Int = 0
    
    var isGameStarted:Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        playerOneLabel.text = "Player One Score: 0"
        playerTwoLabel.text = "Player Two Score: 0"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playerOneButtonTapped(_ sender: Any) {
        playerOneScore += 1
        updateUI()
    }
    

    @IBAction func playerTwoButtonTapped(_ sender: Any) {
        playerTwoScore += 1
        updateUI()
    }
    @IBAction func startGameButtonTapped(_ sender: Any) {
        isGameStarted = true
        playerOneScore = 0
        playerTwoScore = 0
        updateUI()
        
        let timer = Timer.scheduledTimer(withTimeInterval: 10, repeats: false, block: {timer in
            self.isGameStarted = false
        })
    }
    
    func updateUI() {
        if isGameStarted {
            playerOneLabel.text = "Player 1 Score: \(playerOneScore)"
            playerTwoLabel.text = "Player 2 Score: \(playerTwoScore)"
        }
    }
}

