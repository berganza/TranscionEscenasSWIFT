//
//  EscenaPrincipal.swift
//  TransicionEscenas-SpriteKit-SWIFT
//
//  Created by Berganza on 10/12/2014.
//  Copyright (c) 2014 Berganza. All rights reserved.
//

import SpriteKit

class EscenaPrincipal: SKScene {
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    override init(size: CGSize) {
        super.init(size: size)
        
        backgroundColor = SKColor.brownColor()
        
        
        
        
        let tituloEnlace = SKLabelNode(text: "Sal pantalla ->")
        
        tituloEnlace.fontName = "Arial"
        tituloEnlace.fontSize = 50
        tituloEnlace.position = CGPoint(x: CGRectGetMidX(self.frame), y: CGRectGetMidY(self.frame))
        tituloEnlace.name = "Cambiar"
        addChild(tituloEnlace)
        
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        let toke:AnyObject = touches.anyObject()!
        let posicionDeToke = toke.locationInNode(self)
        let loQueToco = self.nodeAtPoint(posicionDeToke)
        
        if loQueToco.name == "Cambiar" {
            
            let transicion = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 2)
            let aparecerEscena = NuevaEscena(size: self.size)
            
            aparecerEscena.scaleMode = SKSceneScaleMode.AspectFill
            self.scene?.view?.presentScene(aparecerEscena, transition: transicion)
            
        }
    }
}
