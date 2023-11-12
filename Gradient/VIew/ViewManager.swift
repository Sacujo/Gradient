//
//  ViewManager.swift
//  Gradient
//
//  Created by Igor Guryan on 13.11.2023.
//

import UIKit

class ViewManager {
    
    var controller: UIViewController
    var view: UIView
    
    init(controller: UIViewController, view: UIView) {
        self.controller = controller
        self.view = controller.view
    }
    
    func createAppHeader(title: String) {
        lazy var headerStack = {
            let stack = UIStackView()
            stack.axis = .horizontal
            stack.distribution = .equalSpacing
            stack.alignment = .center
            stack.translatesAutoresizingMaskIntoConstraints = false
            
            return stack
        }()
        
        var headerLabel: UILabel {
            let label = UILabel()
            label.text = title
            label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
            label.textColor = .white
            return label
        }
        
        var headerBtn = {
            let btn = UIButton()
            btn.translatesAutoresizingMaskIntoConstraints = false
            btn.widthAnchor.constraint(equalToConstant: 31).isActive = true
            btn.heightAnchor.constraint(equalToConstant: 31).isActive = true
            btn.layer.cornerRadius = 16
            
            return btn
        }()
        
    }
}
