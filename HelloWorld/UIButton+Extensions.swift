//
//  UIButton+Extensions.swift
//  HelloWorld
//
//  Created by Tobias Oho on 25.03.20.
//  Copyright © 2020 Tobias Oho. All rights reserved.
//

import Foundation
import UIKit

public extension UIButton {

    func alignTextBelow(spacing: CGFloat = 6.0) {
        if (self.imageView?.image) != nil {
            let imageSize: CGSize = self.imageView!.frame.size
            self.titleEdgeInsets = UIEdgeInsets(top: spacing, left: -imageSize.width, bottom: -(imageSize.height), right: 0.0)
            let labelString = NSString(string: self.titleLabel!.text!)
            let titleSize = labelString.size(withAttributes: [NSAttributedString.Key.font: self.titleLabel!.font ?? ""])
            self.imageEdgeInsets = UIEdgeInsets(top: -(titleSize.height + spacing), left: 0.0, bottom: 0.0, right: -titleSize.width)
        }
    }
    
    private func imageWithColor(color: UIColor) -> UIImage? {
        let rect = CGRect(x: 0.0, y: 0.0, width: 1.0, height: 1.0)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()

        context?.setFillColor(color.cgColor)
        context?.fill(rect)

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }

    func setBackgroundColor(_ color: UIColor?, for state: UIControl.State) {
        if let color = color {
            self.setBackgroundImage(imageWithColor(color: color), for: state)
        }
    }
}
