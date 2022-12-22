//
//  RoundedView.swift
//  Mutriks
//
//  Created by rifqitriginandri on 19/11/22.
//

import UIKit

extension UIView {

//    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
//         let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
//         let mask = CAShapeLayer()
//         mask.path = path.cgPath
//         self.layer.mask = mask
//    }
    
    enum RoundCornersAt{
            case topRight
            case topLeft
            case bottomRight
            case bottomLeft
        }
        
            //multiple corners using CACornerMask
        func roundCorners(corners:[RoundCornersAt], radius: CGFloat) {
            self.layer.cornerRadius = radius
            self.layer.maskedCorners = [
                corners.contains(.topRight) ? .layerMaxXMinYCorner:.init(),
                corners.contains(.topLeft) ? .layerMinXMinYCorner:.init(),
                corners.contains(.bottomRight) ? .layerMaxXMaxYCorner:.init(),
                corners.contains(.bottomLeft) ? .layerMinXMaxYCorner:.init(),
            ]
        }
        

}

extension UISegmentedControl
{
    func defaultConfiguration(font: UIFont = UIFont.systemFont(ofSize: 12), color: UIColor = UIColor.white)
    {
        let defaultAttributes = [
            NSAttributedString.Key.font: font,
            NSAttributedString.Key.foregroundColor: color
        ]
        setTitleTextAttributes(defaultAttributes, for: .normal)
    }

    func selectedConfiguration(font: UIFont = UIFont.boldSystemFont(ofSize: 12), color: UIColor = UIColor.red)
    {
        let selectedAttributes = [
            NSAttributedString.Key.font: font,
            NSAttributedString.Key.foregroundColor: color
        ]
        setTitleTextAttributes(selectedAttributes, for: .selected)
    }
}

extension String {
    var toDouble: Double {
        return Double(self) ?? 0
    }
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

