//
//  BottomSheetViewController.swift
//  HelloWorld
//
//  Created by Tobias Oho on 26.03.20.
//  Copyright © 2020 Tobias Oho. All rights reserved.
//

import UIKit

class BottomSheetViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClicked(_ sender: Any) {
        self.dismiss(animated: true) {
            print("save me!")
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
