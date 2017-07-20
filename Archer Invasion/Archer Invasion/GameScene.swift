import SpriteKit
import AVFoundation

var currentScene = 1
class GameScene: SKScene, SKPhysicsContactDelegate
{
    var obstacleSource: SKNode!
    var buttonRestart: MSButtonNode!
    var nextLevelButton: MSButtonNode!
    var nextLabel: SKLabelNode!
    var obstacleLayer: SKNode!
    var youWon: SKLabelNode!
    var startPoint: SKSpriteNode!
    var shoot: SKSpriteNode!
    let scrollSpeed: CGFloat = 300
    var cloudSpeed: CGFloat = 20
    var hero: SKNode!
    var firstShot = false
    var newHeroReference: SKSpriteNode!
    var sinceExplosion: CFTimeInterval = 0.0
    var explosion: SKSpriteNode!
    var scrollLayer: SKNode!
    var sinceTouch : CFTimeInterval = 0
    var spawnTimer: CFTimeInterval = 0
    let fixedDelta : CFTimeInterval = 1.0 / 50
    var gameState: GameSceneState = .active
    var possibleToLose = true
    var found = false
    var origin: SKSpriteNode!
    var ammo: SKLabelNode!
    var archerSwitch: CFTimeInterval = 0.0
    var numOfLives = 0
    var points = 0
    var velocity: CGVector!
    var numOfAliens = 0
    var alienParent: SKNode!
    var rateOfObstacles = 1.5
    var bounces = 0
    var dab: SKSpriteNode!
    var tillLose: CFTimeInterval = 0.0
    var didHit = false
    var backGroundMusic: SKAudioNode!
    var ableToShoot = true
    var node: SKNode!
    var apple: SKNode!
    var currentLevel = currentScene

    override func didMove(to view: SKView)
    {
        /* Setup your scene here */
        nextLevelButton = childNode(withName: "nextLevelButton") as! MSButtonNode
        nextLabel = self.childNode(withName: "nextLabel") as! SKLabelNode
        nextLabel.isHidden = true
        nextLevelButton.isHidden = true
        alienParent = self.childNode(withName: "alienParent")
        explosion = self.childNode(withName: "explosion") as! SKSpriteNode
        for child in (scene?.children)!
        {
            if child.name == "obstacle"
            {
                numOfAliens += 1
            }
        }
        numOfLives = (numOfAliens/2) + 1
        scrollLayer = self.childNode(withName: "//scrollLayer")
        startPoint = self.childNode(withName: "//position") as! SKSpriteNode
        hero = self.childNode(withName: "hero") as! SKSpriteNode
        youWon = self.childNode(withName: "youWon") as! SKLabelNode
        youWon.isHidden = true
        apple = self.childNode(withName: "apple")
        apple.isHidden = true
        shoot = self.childNode(withName: "release") as! SKSpriteNode
        shoot.isHidden = true
        obstacleLayer = self.childNode(withName: "obstacleLayer")
        obstacleSource = self.childNode(withName: "obstacle")
        origin = self.childNode(withName: "origin") as! SKSpriteNode
        buttonRestart = self.childNode(withName: "buttonRestart") as! MSButtonNode
        ammo = self.childNode(withName: "lives") as! SKLabelNode
        
        physicsWorld.contactDelegate = self
        
        buttonRestart.selectedHandler =
        {
            let skView = self.view as SKView!
            
            let scene = GameScene.level(1) as GameScene!
            
            scene?.scaleMode = .aspectFill
            
            skView?.presentScene(scene)
        }
        
        buttonRestart.state = .MSButtonNodeStateHidden
        
        nextLevelButton.selectedHandler =
        {
            currentScene += 1
            guard let scene = GameScene.level(currentScene) else
            {
                print("Level \(self.currentLevel+1) is missing?")
                return
            }
            
            scene.scaleMode = .aspectFit
            view.presentScene(scene)
            
            
        }
        nextLevelButton.state = .MSButtonNodeStateHidden
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        firstShot = true
        if gameState == .active
        {
            if ableToShoot == true && numOfLives > 0
            {
                let newHero = hero.copy() as! SKSpriteNode
                numOfLives -= 1
                addChild(newHero)
                newHero.position = startPoint.position
                newHero.physicsBody?.restitution = 1.0
                newHero.physicsBody?.friction = 0.0
                newHero.name = "bullet"
                if gameState != .active {return}
                let touch = touches.first!
                let location = touch.location(in: self)
                var dx = location.x - newHero.position.x
                var dy = location.y - newHero.position.y
                dx*=3
                dy*=3
                
                if dx > 600
                {
                    let hold = dx / 600
                    dx /= hold
                    dy /= hold
                }
                
                else if dy > 600
                {
                    let hold = dy / 600
                    dy /= hold
                    dx /= hold
                }
                
                else if dx < 600
                {
                    let hold = 600 / dx
                    dx *= hold
                    dy *= hold
                }
                
                else if dy < 600
                {
                    let hold = 600 / dy
                    dx *= hold
                    dy *= hold
                }
                
                newHero.physicsBody?.velocity = (CGVector(dx: dx, dy: dy))
                sinceTouch = 0
                archerSwitch = 0
                origin.isHidden = true
                shoot.isHidden = false
                ableToShoot = false
                newHeroReference = newHero
            }
        }
    }
    
    override func update(_ currentTime: TimeInterval)
    {
        
        found = false
        if firstShot == true
        {
            velocity = newHeroReference.physicsBody?.velocity
        }
        //check and cap vertical velocity
        if bounces == 5
        {
            for child in (scene?.children)!
            {
                if child.name == "bullet"
                {
                    child.removeFromParent()
                    ableToShoot = true
                    bounces = 0
                }
            }
        }
        
        hero.physicsBody?.angularVelocity.clamp(v1: -1, 3)
        
        sinceTouch += fixedDelta
        spawnTimer += fixedDelta
        
        //skip game state update if game over
        ammo.text = "\(numOfLives)"
        
        if numOfLives == 0
        {
            tillLose += fixedDelta
        }
        
        if numOfAliens == 0
        {
            gameWon()
        }
        
        if ableToShoot == true && numOfLives == 0
        {
            
            gameState = .gameOver
            
            //stop any new angular velocity being applied
            hero.physicsBody?.allowsRotation = false
            
            //reset angular velocity
            hero.physicsBody?.angularVelocity = 0
            buttonRestart.state = .MSButtonNodeStateActive
            apple.isHidden = false
            origin.isHidden = false
            shoot.isHidden = true
        }
        archerSwitch += fixedDelta
        if archerSwitch >= 0.5
        {
            origin.isHidden = false
            shoot.isHidden = true
        }
        
        
        sinceExplosion += fixedDelta
        if sinceExplosion >= 0.2
        {
            for child in (scene?.children)!
            {
                if child.name == "newExplosion"
                {
                    child.removeFromParent()
                }
            }
        }
        
        if gameState != .active
        {
            hero.removeAllActions()
            return
        }
    }
    
    func didBegin(_ contact: SKPhysicsContact)
    {
        /* Get references to bodies involved in collision */
        let contactA = contact.bodyA
        let contactB = contact.bodyB
        let action = SKAction.removeFromParent()
        
    
        /* Get references to the physics body parent nodes */
        let nodeA = contactA.node!
        let nodeB = contactB.node!

        /* Did our hero pass through the 'goal'? */
        if nodeA.name == "goal"
        {
            let newExplosion = explosion.copy() as! SKSpriteNode
            newExplosion.position = nodeA.convert(nodeA.position, to: self)
            newExplosion.name = "newExplosion"
            addChild(newExplosion)
            sinceExplosion = 0
            nodeA.run(action)
            numOfAliens -= 1
            nodeB.physicsBody?.velocity = velocity
        }
        
         if nodeA.name == "wall"
         {
            bounces += 1
         }
        
         if nodeB.name == "wall"
         {
            bounces += 1
         }
         if nodeB.name == "goal"
         {

            let newExplosion = explosion.copy() as! SKSpriteNode
            
            newExplosion.position = nodeB.convert(nodeB.position, to: self)
            newExplosion.name = "newExplosion"
            addChild(newExplosion)
            sinceExplosion = 0
            nodeB.run(action)
            numOfAliens -= 1
            nodeA.physicsBody?.velocity = velocity
         }
    
        if gameState != .active {return}
    }

    
    class func level(_ levelNumber: Int) -> GameScene?
    {
        guard let scene = GameScene(fileNamed: "Level_\(levelNumber)") else
        {
            return nil
        }
        
        scene.scaleMode = .aspectFit
        return scene
    }
    
    func gameWon()
    {
        nextLabel.isHidden = false
        nextLevelButton.isHidden = false
        youWon.isHidden = false
        gameState = .gameOver
        origin.isHidden = false
        shoot.isHidden = true
        //stop any new angular velocity being applied
        hero.physicsBody?.allowsRotation = false
        nextLevelButton.state = .MSButtonNodeStateActive
        //reset angular velocity
        hero.physicsBody?.angularVelocity = 0
        possibleToLose = false
        ableToShoot = false
    }
}
