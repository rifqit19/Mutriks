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
