//
//  ViewController.swift
//  Light
//
//  Created by Nishika Agarwal on 20/02/20.
//  Copyright © 2020 Nishika Agarwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    var lightOn = true
     
    @IBOutlet weak var lightbutton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func buttonPressed(_ sender: AnyObject) {
         lightOn = !lightOn
            updateUI()
        }
    func setTitle(_ title: String?, for state: UIControl.State)
    {
        
    }
    
        
    func updateUI() {
          if lightOn {
            view.backgroundColor = .white
            lightbutton.setTitle("Off", for: .normal)
        
          } else {
            view.backgroundColor = .black
            lightbutton.setTitle("On", for: .normal)
          }
    
    }
    


}

