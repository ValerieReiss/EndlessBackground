//
//  GameScene.swift
//  EndlessBackground
//
//  Created by Valerie on 05.05.23.
//


import SpriteKit
import GameplayKit

var backgroundColorCustom = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0)

class GameScene: SKScene{

    var bg = SKSpriteNode()
    
    override func didMove(to view: SKView) {
        self.backgroundColor = backgroundColorCustom
        
        var ArrayName : [String] = []
                
        var randomIndexBackground: Int = 0
        let backgroundArray = ["Planisferius", "Planisferius", "Planisferius", "Planisferius"]
        randomIndexBackground = Int(arc4random_uniform(4))
        let bgTexture = SKTexture(imageNamed: backgroundArray[randomIndexBackground])
        let moveBGAnimation = SKAction.move(by: CGVector(dx: -bgTexture.size().width, dy: 0), duration: 14)
        let shiftBGAnimation = SKAction.move(by: CGVector(dx: bgTexture.size().width, dy: 0),duration: 0)
        let moveBGForever = SKAction.repeatForever(SKAction.sequence([moveBGAnimation, shiftBGAnimation]))
        var i: CGFloat = 0
        while i<3
            {
                bg = SKSpriteNode(texture: bgTexture)
                bg.position = CGPoint(x: bgTexture.size().width * i, y: self.frame.midY)
                bg.size.height = self.frame.height
                bg.run(moveBGForever)
                bg.zPosition = -2
                self.addChild(bg)
                i += 1
            }

    }
  
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
            
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    func didBegin(_ contact: SKPhysicsContact){
    }

    override func update(_ currentTime: TimeInterval) {
    }
    
}
