//
//  FlipProvider.swift
//  CoinFlipper
//
//  Created by Nikolai Ilushko on 16/08/2018.
//  Copyright © 2018 Nikolai Ilushko. All rights reserved.
//
import GameKit
import UIKit

struct FlipProvider {
    
    let coins = [UIImage(named: "FrontCoin"), UIImage(named: "BackCoin")]
    
    func getRandomCoin() -> UIImage? {
        
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: coins.count)
        
        return coins[randomNumber]
    }
}
