//
//  dadiViewController.swift
//  testone
//
//  Created by Mario Di Marino on 16/10/2019.
//  Copyright © 2019 iOSFoundation. All rights reserved.
//

import UIKit

class dadiViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{

    @IBOutlet weak var dado1: UILabel!
    @IBOutlet weak var dado2: UILabel!
    @IBOutlet weak var somma: UILabel!
    
    
    @IBAction func roll(_ sender: UIButton) {
        let numero1 = arc4random_uniform(6) + 1
        let numero2 = arc4random_uniform(6) + 1
        dado1.text = "\(numero1)"
        dado2.text = "\(numero2)"
        somma.text = "Ti è uscito: \(numero1 + numero2)"
    }
    
    /**/
    
    caio
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    

}
