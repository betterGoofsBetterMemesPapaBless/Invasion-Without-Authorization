//  LevelSelect.swift
//  Archer Invasion

//  Created by Max Blackwell on 7/20/17.
//  Copyright © 2017 Max Blackwell. All rights reserved.

import SpriteKit
import Foundation
import GameplayKit
import UIKit
var levelsUnlocked = 1

class LevelSelect: SKScene
{
    var background = SKSpriteNode(imageNamed: "earth.jpg")
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
    var buttonLevel_17: MSButtonNode!
    var buttonLevel_18: MSButtonNode!
    var buttonLevel_19: MSButtonNode!
    var buttonLevel_20: MSButtonNode!
    var buttonLevel_21: MSButtonNode!
    var buttonLevel_22: MSButtonNode!
    var buttonLevel_23: MSButtonNode!
    var buttonLevel_24: MSButtonNode!
    var buttonLevel_25: MSButtonNode!
    var buttonLevel_26: MSButtonNode!
    var buttonLevel_27: MSButtonNode!
    var buttonLevel_28: MSButtonNode!
    var buttonLevel_29: MSButtonNode!
    var buttonLevel_30: MSButtonNode!
    var buttonLevel_31: MSButtonNode!
    var buttonLevel_32: MSButtonNode!
    var buttonLevel_33: MSButtonNode!
    var buttonLevel_34: MSButtonNode!
    var buttonLevel_35: MSButtonNode!
    var buttonLevel_36: MSButtonNode!

    var highScore = UserDefaults().integer(forKey: "HIGHSCORE")

    var levelsUnlocked: Int!

    override func didMove(to view: SKView)
    {
        saveHighScore(6)
        background.xScale = 0.21
        background.yScale = 0.21
        background.zPosition = -1
        background.position = CGPoint(x: -13, y: 0)

        let swipeUp:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(self.handleSwipes))
        swipeUp.direction = UISwipeGestureRecognizerDirection.up
        view.addGestureRecognizer(swipeUp)
        
        let swipeDown:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(self.handleSwipes))
        swipeDown.direction = UISwipeGestureRecognizerDirection.down
        view.addGestureRecognizer(swipeDown)
      
        cameraNode = self.childNode(withName: "cameraNode") as! SKCameraNode
        self.camera = cameraNode
        cameraNode.addChild(background)

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
        buttonLevel_17 = self.childNode(withName: "buttonLevel_17") as! MSButtonNode
        buttonLevel_18 = self.childNode(withName: "buttonLevel_18") as! MSButtonNode
        buttonLevel_19 = self.childNode(withName: "buttonLevel_19") as! MSButtonNode
        buttonLevel_20 = self.childNode(withName: "buttonLevel_20") as! MSButtonNode
        buttonLevel_21 = self.childNode(withName: "buttonLevel_21") as! MSButtonNode
        buttonLevel_22 = self.childNode(withName: "buttonLevel_22") as! MSButtonNode
        buttonLevel_23 = self.childNode(withName: "buttonLevel_23") as! MSButtonNode
        buttonLevel_24 = self.childNode(withName: "buttonLevel_24") as! MSButtonNode
        buttonLevel_25 = self.childNode(withName: "buttonLevel_25") as! MSButtonNode
        buttonLevel_26 = self.childNode(withName: "buttonLevel_26") as! MSButtonNode
        buttonLevel_27 = self.childNode(withName: "buttonLevel_27") as! MSButtonNode
        buttonLevel_28 = self.childNode(withName: "buttonLevel_28") as! MSButtonNode
        buttonLevel_29 = self.childNode(withName: "buttonLevel_29") as! MSButtonNode
        buttonLevel_30 = self.childNode(withName: "buttonLevel_30") as! MSButtonNode
        buttonLevel_31 = self.childNode(withName: "buttonLevel_31") as! MSButtonNode
        buttonLevel_32 = self.childNode(withName: "buttonLevel_32") as! MSButtonNode
        buttonLevel_33 = self.childNode(withName: "buttonLevel_33") as! MSButtonNode
        buttonLevel_34 = self.childNode(withName: "buttonLevel_34") as! MSButtonNode
        buttonLevel_35 = self.childNode(withName: "buttonLevel_35") as! MSButtonNode
        buttonLevel_36 = self.childNode(withName: "buttonLevel_36") as! MSButtonNode

        buttonLevel_1.selectedHandler =
        {
            self.loadGame(1)
        }
        buttonLevel_2.selectedHandler =
        {
            self.loadGame(2)
        }
        buttonLevel_3.selectedHandler =
        {
            self.loadGame(3)
        }
        buttonLevel_4.selectedHandler =
        {
            self.loadGame(4)
        }
        buttonLevel_5.selectedHandler =
        {
            self.loadGame(5)
        }
        buttonLevel_6.selectedHandler =
        {
            self.loadGame(6)
        }
        buttonLevel_7.selectedHandler =
        {
            self.loadGame(7)
        }
        buttonLevel_8.selectedHandler =
        {
            self.loadGame(8)
        }
        buttonLevel_9.selectedHandler =
        {
            self.loadGame(9)
        }
        buttonLevel_10.selectedHandler =
        {
            self.loadGame(10)
        }
        buttonLevel_11.selectedHandler =
        {
            self.loadGame(11)
        }
        buttonLevel_12.selectedHandler =
        {
            self.loadGame(12)
        }
        buttonLevel_13.selectedHandler =
        {
            self.loadGame(13)
        }
        buttonLevel_14.selectedHandler =
        {
            self.loadGame(14)
        }
        buttonLevel_15.selectedHandler =
        {
            self.loadGame(15)
        }
        buttonLevel_16.selectedHandler =
        {
            self.loadGame(16)
        }
        buttonLevel_17.selectedHandler =
        {
            self.loadGame(17)
        }
        buttonLevel_18.selectedHandler =
        {
            self.loadGame(18)
        }
        buttonLevel_19.selectedHandler =
        {
            self.loadGame(19)
        }
        buttonLevel_20.selectedHandler =
        {
            self.loadGame(20)
        }
        buttonLevel_21.selectedHandler =
        {
            self.loadGame(21)
        }
        buttonLevel_22.selectedHandler =
        {
            self.loadGame(22)
        }
        buttonLevel_23.selectedHandler =
        {
            self.loadGame(23)
        }
        buttonLevel_24.selectedHandler =
        {
            self.loadGame(24)
        }
        buttonLevel_25.selectedHandler =
        {
            self.loadGame(25)
        }
        buttonLevel_26.selectedHandler =
        {
            self.loadGame(26)
        }
        buttonLevel_27.selectedHandler =
        {
            self.loadGame(27)
        }
        buttonLevel_28.selectedHandler =
        {
            self.loadGame(28)
        }
        buttonLevel_29.selectedHandler =
        {
            self.loadGame(29)
        }
        buttonLevel_30.selectedHandler =
        {
            self.loadGame(30)
        }
        buttonLevel_31.selectedHandler =
        {
            self.loadGame(31)
        }
        buttonLevel_32.selectedHandler =
        {
            self.loadGame(32)
        }
        buttonLevel_33.selectedHandler =
        {
            self.loadGame(33)
        }
        buttonLevel_34.selectedHandler =
        {
            self.loadGame(34)
        }
        buttonLevel_35.selectedHandler =
        {
            self.loadGame(35)
        }
        buttonLevel_36.selectedHandler =
        {
            self.loadGame(36)
        }
    }
    
    func loadGame(_ level: Int)
    {
        guard let skView = self.view as SKView! else
        {
            print("Could not get Skview")
            return
        }
        
        //2) load game scene
        guard let scene = GameScene.level(level) else
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

    func handleSwipes(gesture: UISwipeGestureRecognizer)
    {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer
        {
            switch swipeGesture.direction
            {
            case UISwipeGestureRecognizerDirection.up:
                if cameraNode.position.y >= -500
                {
                    cameraNode.run(SKAction.move(by: CGVector(dx: 0, dy: -70), duration: 0.25))
                }
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

func saveHighScore(_ currentLevel: Int)
{
    UserDefaults.standard.set(currentLevel, forKey: "HIGHSCORE")
    levelsUnlocked = UserDefaults().integer(forKey: "HIGHSCORE")
}
