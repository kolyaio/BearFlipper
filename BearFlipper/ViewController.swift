//
//  ViewController.swift
//  BearFlipper
//
//  Created by Nikolai Ilushko on 16/08/2018.
//  Copyright © 2018 Nikolai Ilushko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var coinImageView: UIImageView!
    
    @IBAction func handleTapBear(_ sender: Any) {
        self.handleHeadOrTail()
    }
    @IBOutlet weak var headOrTailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func handleHeadOrTail() {
        coinImageView.image = FlipProvider().getRandomCoin()
        UIView.transition(with: coinImageView, duration: 0.4, options: [.transitionFlipFromBottom, .repeat], animations: {UIView.setAnimationRepeatCount(4)}, completion: { finished in
            self.coinImageView.image = FlipProvider().getRandomCoin()
        })
    }
    
    
}

