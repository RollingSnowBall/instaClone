//
//  UIButton+.swift
//  instaClone
//
//  Created by JUNO on 2022/06/25.
//

import UIKit

extension UIButton {
    func setImage(systemName: String){
        contentHorizontalAlignment = .fill
        contentVerticalAlignment = .fill
        
        imageView?.contentMode = .scaleAspectFit
        imageEdgeInsets = .zero
        
        setImage(UIImage(systemName: systemName), for: .normal)
    }
}
