//
//  ProfileCollectionViewCell.swift
//  instaClone
//
//  Created by JUNO on 2022/07/06.
//

import SnapKit
import UIKit

final class ProfileCollectionViewCell: UICollectionViewCell {
    
    private let imageView = UIImageView ()
    
    func setup(with image: UIImage){
        addSubview(imageView)
        imageView.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
        
        imageView.backgroundColor = .tertiaryLabel
    }
}
