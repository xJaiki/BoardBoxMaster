//
//  timerViewController.swift
//  testone
//
//  Created by Mario Di Marino on 16/10/2019.
//  Copyright © 2019 iOSFoundation. All rights reserved.
//

import UIKit

class timerViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet var lblminuti: UILabel!
    @IBOutlet var btnPause: UIButton!
    @IBOutlet var btnReset: UIButton!
    @IBOutlet var btnStart: UIButton!
    
    
    
    var time = 0
    var timem = 0
    
    //timer
    var timer = Timer()
    
    
    @IBAction func start(_ sender: UIButton)
    {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerViewController.action), userInfo: nil, repeats: true)
        self.btnStart.isEnabled = false;
    }
    @IBAction func pause(_ sender: AnyObject)
    {
        timer.invalidate()
        self.btnStart.isEnabled = true;
        
    }
    @IBAction func reset(_ sender: AnyObject)
    {
        timer.invalidate()
        time = 0
        timem = 0
        label.text = ("0")
        lblminuti.text = ("0")
        self.btnStart.isEnabled = true;
    }
    
    @objc func action()
    {
        time += 1
        label.text! = String(time)
        if time > (59){
            label.text  = ("0")
            time = 0
            timem += 1
            lblminuti.text! = String(timem)
            }
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        btnStart.layer.cornerRadius = 15
        btnPause.layer.cornerRadius = 15
        btnReset.layer.cornerRadius = 15
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }

}
