//
//  ViewController.swift
//  TransicionEscenas-SpriteKit-SWIFT
//
//  Created by Berganza on 10/12/2014.
//  Copyright (c) 2014 Berganza. All rights reserved.
//

import UIKit
import SpriteKit


class ViewController: UIViewController {
    
    
    // Declarar
    var escena: EscenaPrincipal!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Configurar el view
        let vista = view as SKView
        
        // Inicializar escena y configurar
        escena = EscenaPrincipal(size: vista.bounds.size)
        escena.scaleMode = .AspectFill
        
        // Presentar la escena
        vista.presentScene(escena)
        

    }
    
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }

}

