//
//  Lanceur.swift
//  App1
//
//  Created by Matthieu PASSEREL on 17/11/2017.
//  Copyright © 2017 Matthieu PASSEREL. All rights reserved.
//

import UIKit

class Lanceur: CAEmitterLayer {
    
    override init(layer: Any) {
        super.init(layer: layer)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setup(frame: CGRect) {
        emitterPosition = CGPoint(x: frame.width / 2, y: -10)
        emitterShape = CAEmitterLayerEmitterShape.line
        emitterSize = CGSize(width: frame.width, height: 2)
    }
    
    func lancerConfettis() {
        //CAEmitterCell
        emitterCells = creerCells()
    }
    
    func creerCells() -> [Confetti] {
        var confettis = [Confetti]()
        for _ in (0...30) {
            confettis.append(Confetti())
        }
        return confettis
    }

}
