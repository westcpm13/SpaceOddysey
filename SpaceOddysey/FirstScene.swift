//
//  FirstScene.swift
//  SpaceOddysey
//
//  Created by ptrojan on 17.01.2017.
//  Copyright © 2017 ptrojan. All rights reserved.
//

import Foundation
import SpriteKit


class FirstScene : SKScene {
    
    override func didMove(to view: SKView) {
        self.backgroundColor = SKColor.red
        self.scaleMode = .aspectFit
        self.physicsWorld.gravity = CGVector(dx: -2.0, dy: -9.81)
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in touches {
        
              let gravity = Double(arc4random_uniform(10) + 1) - 5
            
            self.physicsWorld.gravity = CGVector(dx: gravity, dy: -9.81)

            
            let locationUser = touch.location(in: self)
            print("\(locationUser)")
            let ballBlue = SKShapeNode(circleOfRadius: 20)
            ballBlue.fillColor = SKColor.blue
            ballBlue.position = locationUser
            self.addChild(ballBlue)
            
            ballBlue.physicsBody = SKPhysicsBody(circleOfRadius: 20)
            print("\(ballBlue.physicsBody?.mass)")
         //   ballBlue.physicsBody?.mass = 2000000
            print("\(ballBlue.physicsBody?.mass)")

        }
        
    }
    
}

