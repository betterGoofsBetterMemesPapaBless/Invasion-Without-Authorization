//
//  GameViewController.swift
//  PeevedPenguins
//
//  Created by Max Blackwell on 6/30/17.
//  Copyright © 2017 Max Blackwell. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit
import GoogleMobileAds
import AudioToolbox

class GameViewController: UIViewController, GADBannerViewDelegate
{
    var adMobBannerView = GADBannerView()
    
    
    @IBOutlet var bannerView: GADBannerView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
                
        if let view = self.view as! SKView?
        {
            // Load the SKScene from 'GameScene.sks'
            if let scene = MainMenu(fileNamed: "MainMenu")
            {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFit
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
//            view.showsFPS = true
            view.showsNodeCount = false
//            view.showsPhysics = true

        }
        
        let request = GADRequest()
        request.testDevices = [kGADSimulatorID]
        bannerView.delegate = self
        bannerView.adUnitID = "ca-app-pub-6488075142692939/3600664824"
        bannerView.rootViewController = self
//        bannerView.load(request)
    }
    
    override var shouldAutorotate: Bool
    {
        return true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask
    {
        if UIDevice.current.userInterfaceIdiom == .phone
        {
            return .allButUpsideDown
        }
        else
        {
            return .all
        }
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
    override var prefersStatusBarHidden: Bool
    {
        return true
    }
    
    // MARK: -  ADMOB BANNER
}
