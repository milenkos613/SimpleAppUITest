//
//  LogoImageView.swift
//  Enigma
//
//

import UIKit

class LogoImageView: UIImageView {
    
    init() {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLogo() {
        image = UIImage(named: "logo")
        contentMode = .scaleAspectFit
        
        centerXAnchor.constraint(equalTo: superview?.centerXAnchor ?? super.centerXAnchor).isActive = true
        leftAnchor.constraint(equalTo: superview?.leftAnchor ?? super.leftAnchor, constant: 20).isActive = true
        rightAnchor.constraint(equalTo: superview?.rightAnchor ?? super.rightAnchor, constant: -20).isActive = true
        bottomAnchor.constraint(equalTo: superview?.bottomAnchor ?? super.bottomAnchor, constant: -20).isActive = true
        heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height / 3).isActive = true
    }
    
    
}

