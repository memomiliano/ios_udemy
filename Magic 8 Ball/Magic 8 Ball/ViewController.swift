//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Maximiliano Ruiz on 6/2/19.
//  Copyright © 2019 Maximiliano Ruiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImage: UIImageView!
    var newBallResponse : Int = 0
    var ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        getNewBallResponse()
        
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        
        getNewBallResponse()
        
    }
    
    func getNewBallResponse() {
        
        //newBallResponse = Int.random(in: 1 ... 5)
        //ballImage.image = UIImage(named: "ball\(newBallResponse)")
        
        newBallResponse = Int.random(in: 0 ... 4)
        ballImage.image = UIImage(named: ballArray[newBallResponse])
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        getNewBallResponse()
        
    }
    
}

