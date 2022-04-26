//
//  ListItemsButton.swift
//  homeWork9
//
//  Created by Natia's Mac on 26/04/2022.
//

import Foundation
import UIKit

class ListItemsButton: UIButton{
    
    override init(frame: CGRect){
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupButton()
    }
    
    func setupButton(){
        setTitleColor(.white, for: .normal)
        backgroundColor = .blue
        titleLabel?.font = UIFont(name: "AvenirNext-DemiBolddItalic", size: 25)
        contentHorizontalAlignment = .left
        layer.cornerRadius = 10
    }
}
