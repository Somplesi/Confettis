//
//  ViewController.swift
//  App1
//
//  Created by Matthieu PASSEREL on 17/11/2017.
//  Copyright © 2017 Matthieu PASSEREL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bouton: UIButton!
    
    var lanceur: Lanceur!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bouton.layer.cornerRadius = 25
        lanceur = Lanceur(layer: self)
        lanceur.setup(frame: view.frame)
        view.layer.addSublayer(lanceur)
    }

    @IBAction func boutonAction(_ sender: Any) {
        //Action pour lancer
        lanceur.lancerConfettis()
        bouton.isEnabled = false
        Timer.scheduledTimer(withTimeInterval: 5, repeats: false) { (t) in
            self.lanceur.emitterCells?.removeAll()
            self.bouton.isEnabled = true
        }
    }
    
}

