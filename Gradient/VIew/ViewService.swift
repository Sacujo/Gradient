//
//  ViewService.swift
//  Gradient
//
//  Created by Igor Guryan on 13.11.2023.
//

import UIKit

class ViewService {
    static let shared = ViewService()
    private init() {}
    
    func gradientLayer(
        startColor: UIColor?,
        endColor: UIColor? = UIColor(hex: "#565C87FF"),
        frame: CGRect = CGRect(x: 0, y: 0, width: 200, height: 200)
    ) -> CAGradientLayer {
        
        let gradient = CAGradientLayer()
        gradient.frame = frame
        gradient.colors = [
            startColor?.cgColor ?? UIColor.white.cgColor,
            endColor?.cgColor ?? UIColor.white.cgColor
        ]
        
        gradient.startPoint = CGPoint(x:0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        
        return gradient
    }
}
