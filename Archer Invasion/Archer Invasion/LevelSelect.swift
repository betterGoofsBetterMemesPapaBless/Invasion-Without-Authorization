//
//  LevelSelect.swift
//  Archer Invasion
//
//  Created by Max Blackwell on 7/20/17.
//  Copyright © 2017 Max Blackwell. All rights reserved.
//

import SpriteKit
import Foundation

class LevelSelect: SKScene
{
    var buttonLevel_1: MSButtonNode!
    var buttonLevel_2: MSButtonNode!
    var buttonLevel_3: MSButtonNode!
    var buttonLevel_4: MSButtonNode!
    var buttonLevel_5: MSButtonNode!
    
    
    override func didMove(to view: SKView)
    {
        buttonLevel_1 = self.childNode(withName: "buttonLevel_1") as! MSButtonNode
        buttonLevel_2 = self.childNode(withName: "buttonLevel_2") as! MSButtonNode
        buttonLevel_3 = self.childNode(withName: "buttonLevel_3") as! MSButtonNode
        buttonLevel_4 = self.childNode(withName: "buttonLevel_4") as! MSButtonNode
        buttonLevel_5 = self.childNode(withName: "buttonLevel_5") as! MSButtonNode
        
        
        buttonLevel_1.selectedHandler =
        {
            print("Going to level 1")
            guard let skView = self.view as SKView! else
            {
                print("Could not get Skview")
                return
            }
            
            //2) load game scene
            guard let scene = GameScene.level(1) else
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
        buttonLevel_2.selectedHandler =
        {
            print("Going to level 2")
            print("Going to level 1")
            guard let skView = self.view as SKView! else
            {
                print("Could not get Skview")
                return
            }
            
            //2) load game scene
            guard let scene = GameScene.level(2) else
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
        buttonLevel_3.selectedHandler =
        {
            print("Going to level 3")
            print("Going to level 1")
            guard let skView = self.view as SKView! else
            {
                print("Could not get Skview")
                return
            }
            
            //2) load game scene
            guard let scene = GameScene.level(3) else
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
        buttonLevel_4.selectedHandler =
        {
            print("Going to level 4")
            print("Going to level 1")
            guard let skView = self.view as SKView! else
            {
                print("Could not get Skview")
                return
            }
            
            //2) load game scene
            guard let scene = GameScene.level(4) else
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
        buttonLevel_5.selectedHandler =
        {
            print("Going to level 5")
            print("Going to level 1")
            guard let skView = self.view as SKView! else
            {
                print("Could not get Skview")
                return
            }
            
            //2) load game scene
            guard let scene = GameScene.level(5) else
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

}
