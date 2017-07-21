//
//  MainMenu.swift
//  PeevedPenguins
//
//  Created by Max Blackwell on 6/30/17.
//  Copyright © 2017 Max Blackwell. All rights reserved.
//

import Foundation
import SpriteKit

class MainMenu: SKScene
{
    //UI connections
    var buttonPlay: MSButtonNode!
    let backgroundImage = SKSpriteNode(imageNamed: "Earth-background.jpg")
    

    
    override func didMove(to view: SKView)
    {
        //setup your scene here
        
        //setup UI connections
        buttonPlay = self.childNode(withName: "buttonPlay") as! MSButtonNode
        addChild(backgroundImage)
        backgroundImage.zPosition = -1
        backgroundImage.xScale = 0.25
        backgroundImage.yScale = 0.25
        backgroundImage.position = CGPoint(x: 0, y: 0)
        buttonPlay.selectedHandler =
            {
                self.loadGame()
        }
    }
    
    func loadGame()
    {
        //1) grab reference to our sprite kit view
        guard let skView = self.view as SKView! else
        {
            print("Could not get Skview")
            return
        }
        
        //2) load game scene
        guard let scene = LevelSelect(fileNamed: "LevelSelect") else
        {
            print("Could not make game scene, check the name is spelled correctly")
            return
        }
        
        //3) ensure correct aspect mode
        scene.scaleMode = .aspectFit
        
        //show debug
        skView.showsPhysics = false
        skView.showsDrawCount = true
        skView.showsFPS = true
        
        //4) start game scene
        skView.presentScene(scene)
    }
}
