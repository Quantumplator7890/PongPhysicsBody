//
//  GameScene.swift
//  Fall!
//
//  Created by EC on 1/15/17.
//  Copyright © 2017 Unknown Studio. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var character = SKSpriteNode()
    var enemy = SKSpriteNode()
    var ball = SKSpriteNode()
    
    override func didMove(to view: SKView) {
        character = self.childNode(withName: "character") as! SKSpriteNode
        enemy = self.childNode(withName: "enemy") as! SKSpriteNode
        ball = self.childNode(withName: "ball") as! SKSpriteNode
        
        ball.physicsBody?.applyImpulse(CGVector(dx: 20, dy: 20))
        
        let border = SKPhysicsBody(edgeLoopFrom: self.frame)
        border.friction = 0
        border.restitution = 1
        self.physicsBody = border
    }
    
    
    override func update(_ currentTime: TimeInterval) {
    
    }
}
