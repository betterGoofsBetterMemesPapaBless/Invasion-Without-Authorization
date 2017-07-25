//  LevelSelect.swift
//  Archer Invasion

//  Created by Max Blackwell on 7/20/17.
//  Copyright © 2017 Max Blackwell. All rights reserved.

import SpriteKit
import Foundation
import GameplayKit
import UIKit
class LevelSelect: SKScene
{
    var cameraNode: SKCameraNode!
    var buttonLevel_1: MSButtonNode!
    var buttonLevel_2: MSButtonNode!
    var buttonLevel_3: MSButtonNode!
    var buttonLevel_4: MSButtonNode!
    var buttonLevel_5: MSButtonNode!
    var buttonLevel_6: MSButtonNode!
    var buttonLevel_7: MSButtonNode!
    var buttonLevel_8: MSButtonNode!
    var buttonLevel_9: MSButtonNode!
    var buttonLevel_10: MSButtonNode!
    var buttonLevel_11: MSButtonNode!
    var buttonLevel_12: MSButtonNode!
    var buttonLevel_13: MSButtonNode!
    var buttonLevel_14: MSButtonNode!
    var buttonLevel_15: MSButtonNode!
    var buttonLevel_16: MSButtonNode!


    var touchBeganLocation: CGPoint!


    var levelsUnlocked: Int!
    let backgroundImage = SKSpriteNode(imageNamed: "Earth-background.jpg")

    override func didMove(to view: SKView)
    {
        let swipeUp:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(self.handleSwipes))
        swipeUp.direction = UISwipeGestureRecognizerDirection.up
        view.addGestureRecognizer(swipeUp)
        
        let swipeDown:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(self.handleSwipes))
        swipeDown.direction = UISwipeGestureRecognizerDirection.down
        view.addGestureRecognizer(swipeDown)
      
        backgroundImage.zPosition = -1
        backgroundImage.xScale = 0.25
        backgroundImage.yScale = 0.25
        backgroundImage.position = CGPoint(x: 0, y: 0)
        cameraNode = self.childNode(withName: "cameraNode") as! SKCameraNode
        self.camera = cameraNode
        cameraNode.addChild(backgroundImage)
        buttonLevel_1 = self.childNode(withName: "buttonLevel_1") as! MSButtonNode
        buttonLevel_2 = self.childNode(withName: "buttonLevel_2") as! MSButtonNode
        buttonLevel_3 = self.childNode(withName: "buttonLevel_3") as! MSButtonNode
        buttonLevel_4 = self.childNode(withName: "buttonLevel_4") as! MSButtonNode
        buttonLevel_5 = self.childNode(withName: "buttonLevel_5") as! MSButtonNode
        buttonLevel_6 = self.childNode(withName: "buttonLevel_6") as! MSButtonNode
        buttonLevel_7 = self.childNode(withName: "buttonLevel_7") as! MSButtonNode
        buttonLevel_8 = self.childNode(withName: "buttonLevel_8") as! MSButtonNode
        buttonLevel_9 = self.childNode(withName: "buttonLevel_9") as! MSButtonNode
        buttonLevel_10 = self.childNode(withName: "buttonLevel_10") as! MSButtonNode
        buttonLevel_11 = self.childNode(withName: "buttonLevel_11") as! MSButtonNode
        buttonLevel_12 = self.childNode(withName: "buttonLevel_12") as! MSButtonNode
        buttonLevel_13 = self.childNode(withName: "buttonLevel_13") as! MSButtonNode
        buttonLevel_14 = self.childNode(withName: "buttonLevel_14") as! MSButtonNode
        buttonLevel_15 = self.childNode(withName: "buttonLevel_15") as! MSButtonNode
        buttonLevel_16 = self.childNode(withName: "buttonLevel_16") as! MSButtonNode


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
            //if levels unlocked >= 2
            //{
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
            //}
        }
        buttonLevel_3.selectedHandler =
        {
            //if levelsUnlocked >= 3
            //{
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
            //}

        }
        buttonLevel_4.selectedHandler =
        {
            //if levelsUnlocked >= 4
            //{
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
            //}

        }
        buttonLevel_5.selectedHandler =
        {
            //if levelsUnlocked >= 5
            //{
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
            //}

        }
        buttonLevel_6.selectedHandler =
        {
            //if levelsUnlocked >= 6
            //{
                print("Going to level 5")
                print("Going to level 1")
                guard let skView = self.view as SKView! else
                {
                    print("Could not get Skview")
                    return
                }
                
                //2) load game scene
                guard let scene = GameScene.level(6) else
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
            //}

        }
        buttonLevel_7.selectedHandler =
        {
            //if levelsUnlocked >= 7
            //{
            print("Going to level 5")
            print("Going to level 1")
            guard let skView = self.view as SKView! else
            {
                print("Could not get Skview")
                return
            }
            
            //2) load game scene
            guard let scene = GameScene.level(7) else
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
            //}
                
        }
        
        
        
        
        buttonLevel_8.selectedHandler =
        {
            //if levelsUnlocked >= 8
            //{
            print("Going to level 5")
            print("Going to level 1")
            guard let skView = self.view as SKView! else
            {
                print("Could not get Skview")
                return
            }
            
            //2) load game scene
            guard let scene = GameScene.level(8) else
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
            //}
            
        }
        
        buttonLevel_9.selectedHandler =
        {
            //if levelsUnlocked >= 8
            //{
            print("Going to level 5")
            print("Going to level 1")
            guard let skView = self.view as SKView! else
            {
                print("Could not get Skview")
                return
            }
            
            //2) load game scene
            guard let scene = GameScene.level(9) else
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
            //}
                
        }
        buttonLevel_10.selectedHandler =
        {
            //if levelsUnlocked >= 8
            //{
            print("Going to level 5")
            print("Going to level 1")
            guard let skView = self.view as SKView! else
            {
                print("Could not get Skview")
                return
            }
            
            //2) load game scene
            guard let scene = GameScene.level(10) else
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
            //}
        }
        buttonLevel_11.selectedHandler =
        {
            //if levelsUnlocked >= 8
            //{
            print("Going to level 5")
            print("Going to level 1")
            guard let skView = self.view as SKView! else
            {
                print("Could not get Skview")
                return
            }
            
            //2) load game scene
            guard let scene = GameScene.level(11) else
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
            //}
        }
        buttonLevel_12.selectedHandler =
        {
            //if levelsUnlocked >= 8
            //{
            print("Going to level 5")
            print("Going to level 1")
            guard let skView = self.view as SKView! else
            {
                print("Could not get Skview")
                return
            }
            
            //2) load game scene
            guard let scene = GameScene.level(12) else
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
            //}
        }
        buttonLevel_13.selectedHandler =
            {
            //if levelsUnlocked >= 8
            //{
            print("Going to level 5")
            print("Going to level 1")
            guard let skView = self.view as SKView! else
            {
                print("Could not get Skview")
                return
            }
            
            //2) load game scene
            guard let scene = GameScene.level(13) else
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
            //}
        }
        buttonLevel_14.selectedHandler =
        {
            //if levelsUnlocked >= 8
            //{
            print("Going to level 5")
            print("Going to level 1")
            guard let skView = self.view as SKView! else
            {
                print("Could not get Skview")
                return
            }
            
            //2) load game scene
            guard let scene = GameScene.level(14) else
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
            //}
        }
        buttonLevel_15.selectedHandler =
        {
            //if levelsUnlocked >= 8
            //{
            print("Going to level 5")
            print("Going to level 1")
            guard let skView = self.view as SKView! else
            {
                print("Could not get Skview")
                return
            }
            
            //2) load game scene
            guard let scene = GameScene.level(15) else
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
            //}
        }
        buttonLevel_16.selectedHandler =
        {
            //if levelsUnlocked >= 8
            //{
            print("Going to level 5")
            print("Going to level 1")
            guard let skView = self.view as SKView! else
            {
                print("Could not get Skview")
                return
            }
            
            //2) load game scene
            guard let scene = GameScene.level(16) else
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
            //}
        }
    }
    


    func handleSwipes(gesture: UISwipeGestureRecognizer)
    {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer
        {
            switch swipeGesture.direction
            {
            case UISwipeGestureRecognizerDirection.up:
                cameraNode.run(SKAction.move(by: CGVector(dx: 0, dy: -70), duration: 0.25))
                print("swipe up")
            case UISwipeGestureRecognizerDirection.down:
                if cameraNode.position.y <= -50
                {
                    cameraNode.run(SKAction.move(by: CGVector(dx: 0, dy: 70), duration: 0.25))
                }
                print("swipe down")
            default: break
            }
        }
    }
}
