//
//  ViewController.swift
//  HelloWorld
//
//  Created by Tobias Oho on 25.03.20.
//  Copyright © 2020 Tobias Oho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.setTitleColor(UIColor(named: "Selected"), for: .highlighted)
        button.setBackgroundColor(UIColor(named: "Accent"), for: .highlighted)
        button.alignTextBelow()
        // Do any additional setup after loading the view.
    }


}

