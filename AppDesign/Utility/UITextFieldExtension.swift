//
//  UITextFieldExtension.swift
//  AppDesign
//
//  Created by Rahul Bansal on 16/03/22.
//

import Foundation
import UIKit

extension UITextField {
    
    func addBottomBorder() {
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: self.frame.size.height - 1, width: self.frame.size.width, height: 1)
        bottomLine.backgroundColor = UIColor.gray.cgColor
        borderStyle = .none
        layer.addSublayer(bottomLine)
    }
}
