//
//  GameTitle.swift
//  HappyBurd
//
//  Created by Taylor Frost on 8/19/16.
//
//

import SpriteKit

class GameTitle:SKSpriteNode {
    
    // MARK: - Init
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private override init(texture: SKTexture?, color: UIColor, size: CGSize) {
        super.init(texture: texture, color: color, size: size)
    }
    
    convenience init() {
        let texture = GameTextures.sharedInstance.textureWithName(name: SpriteName.GameTitle)
        self.init(texture: texture, color: SKColor.whiteColor(), size: texture.size())
        
        self.setupGameTitle()
    }
    
    // MARK: - Setup
    private func setupGameTitle() {
        self.position = kScreenTopCenter
    }
}
