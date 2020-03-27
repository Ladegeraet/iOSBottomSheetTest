//
//  ViewController.swift
//  HelloWorld
//
//  Created by Tobias Oho on 25.03.20.
//  Copyright © 2020 Tobias Oho. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialBottomSheet
import MaterialComponents.MaterialBottomSheet_ShapeThemer

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //button.setTitleColor(UIColor(named: "Selected"), for: .highlighted)
        //button.setBackgroundColor(UIColor(named: "Accent"), for: .highlighted)
//        button.alignTextBelow()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClicked(_ sender: Any) {
        
        
        // View controller the bottom sheet will hold
        let viewController: BottomScrollViewController = BottomScrollViewController(nibName: "BottomScrollViewController", bundle: nil)
        // Initialize the bottom sheet with the view controller just created
        let bottomSheet: MDCBottomSheetController = MDCBottomSheetController(contentViewController: viewController)
        
        var topPadding = CGFloat(0)
        if #available(iOS 11.0, *) {
            let window = UIApplication.shared.keyWindow
            topPadding = window?.safeAreaInsets.top as! CGFloat
        }
        
        bottomSheet.preferredContentSize = CGSize(width: viewController.view.frame.size.width, height: viewController.view.frame.size.height + topPadding)
        
//        // Step 2: Create or get a shape scheme
//        let shapeScheme = MDCShapeScheme()
//        
//        let largeShapeCategory = MDCShapeCategory()
//        let roundedCorner = MDCCornerTreatment.corner(withRadius: 15,
//                                                               valueType: .absolute)
//        largeShapeCategory?.topLeftCorner = roundedCorner
//        largeShapeCategory?.topRightCorner = roundedCorner
//        shapeScheme.largeComponentShape = largeShapeCategory!
//        // Step 3: Apply the shape scheme to your component
//        MDCBottomSheetControllerShapeThemer.applyShapeScheme(shapeScheme, to: bottomSheet)
        
        // Present the bottom sheet
        present(bottomSheet, animated: true, completion: nil)
    }
    
}

