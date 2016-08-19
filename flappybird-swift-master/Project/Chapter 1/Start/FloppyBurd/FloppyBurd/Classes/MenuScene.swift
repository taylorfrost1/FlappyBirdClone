//
//  MenuScene.swift
//  FloppyBurd
//
//  Created by Taylor Frost on 8/19/16.
//  Copyright © 2016 Jeremy Novak. All rights reserved.
//

import SpriteKit

class MenuScene:SKScene {
    
    // MARK: - Private class constants
    private let playButton = PlayButton()
    
    // MARK: - Init
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(size: CGSize) {
        super.init(size: size)
    }
    
    override func didMoveToView(view: SKView) {
        self.setupScene()
        GameAudio.sharedInstance.playBackgroundMusic(fileName: GameAudio.sharedInstance.gameMusic)
    }
    
    // MARK: - Setup
    private func setupScene() {
        // Set the background color
        self.backgroundColor = Colors.colorFromRGB(rgbvalue: Colors.Background)
        
        // Add the play button
        self.addChild(self.playButton)
    }
    
    // MARK: - Update
    override func update(currentTime: NSTimeInterval) {
    }
    
    // MARK: - Touch Events
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touch:UITouch = touches.first! as UITouch
        let touchLocation = touch.locationInNode(self)
        
        if self.playButton.containsPoint(touchLocation) {
            self.playButton.tapped()
            
            self.loadGameScene()
        }
    }
    
    // MARK: - Load Scene
    private func loadGameScene() {
        let gameScene = GameScene(size: kViewSize)
        let transition = SKTransition.fadeWithColor(SKColor.blackColor(), duration: 0.25)
        
        self.view?.presentScene(gameScene, transition: transition)
    }
}
