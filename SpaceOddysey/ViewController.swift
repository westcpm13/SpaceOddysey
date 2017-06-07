//
//  ViewController.swift
//  SpaceOddysey
//
//  Created by ptrojan on 17.01.2017.
//  Copyright © 2017 ptrojan. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstScene = FirstScene(size: self.view.bounds.size)
        if let skView = self.view as? SKView {
            skView.showsFPS = true
            skView.showsNodeCount = true
            skView.ignoresSiblingOrder = true
            skView.presentScene(firstScene)
        }
        
    }

}

