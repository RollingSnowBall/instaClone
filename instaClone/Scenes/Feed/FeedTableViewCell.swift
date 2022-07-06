//
//  FeedTableViewCell.swift
//  instaClone
//
//  Created by JUNO on 2022/06/25.
//

import SnapKit
import UIKit

final class FeedTableViewCell : UITableViewCell {
    
    private lazy var imageBox: UIImageView = {
        let imageBox = UIImageView()
        imageBox.backgroundColor = .red
        
        return imageBox
    }()
    
    private lazy var likeButton: UIButton = {
        let button = UIButton()
        button.setImage(systemName: "heart")
        
        return button
    }()
    
    private lazy var commentButton: UIButton = {
        let button = UIButton()
        button.setImage(systemName: "message")
        
        return button
    }()
    
    private lazy var directMessageButton: UIButton = {
        let button = UIButton()
        button.setImage(systemName: "paperplane")
        
        return button
    }()
    
    private lazy var bookmarkButton: UIButton = {
        let button = UIButton()
        button.setImage(systemName: "bookmark")
        
        return button
    }()
    
    private lazy var currentLikedCountLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.font = .systemFont(ofSize: 13, weight: .semibold)
        label.text = "홍길동님 외 32명이 좋아합니다."
        
        return label
    }()
    
    private lazy var contentLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.font = .systemFont(ofSize: 13, weight: .medium)
        label.numberOfLines = 5
        label.text = """
28. 비즈니스를 비틀즈 같은 것이라 생각합니다. 그들은 개개인이 다른 사람과 조화를 이뤄 시너지를 이끌어 냈죠. 그게 바로 제가 비즈니스를 보는 방식입니다. 위대한 일은 언제나 다른 사람과 협력해야만 이뤄낼 수 있습니다. \n 29. 전 올바른 사람이 되는 데 관심이 없습니다. 성공에만 신경을 쓸 뿐이죠. 전 제가 잘못되는 것을 신경 쓰지 않습니다. 제가 많이 잘못된 사람임을 인정합니다. 사실 이런 것들은 제게 별로 중요치 않습니다. 중요한 것은 우리가 옳은 일을 하는 것이죠.
"""
        
        
        return label
    }()
    
    private lazy var dateLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.font = .systemFont(ofSize: 11, weight: .medium)
        label.numberOfLines = 5
        label.text = "1일 전"
        
        return label
    }()
    
    func setup(){
        [
            imageBox,
            likeButton,
            commentButton,
            directMessageButton,
            bookmarkButton,
            currentLikedCountLabel,
            contentLabel,
            dateLabel
        ].forEach{
            addSubview($0)
        }
        
        imageBox.snp.makeConstraints{
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.top.equalToSuperview()
            $0.height.equalTo(imageBox.snp.width)
        }
        
        let buttonWidth: CGFloat = 24
        let buttonInset: CGFloat = 16
        
        likeButton.snp.makeConstraints{
            $0.leading.equalToSuperview().inset(buttonInset)
            $0.top.equalTo(imageBox.snp.bottom).offset(buttonInset)
            $0.width.equalTo(buttonWidth)
            $0.height.equalTo(buttonWidth)
        }
        
        commentButton.snp.makeConstraints{
            $0.leading.equalTo(likeButton.snp.trailing).offset(12)
            $0.top.equalTo(likeButton.snp.top)
            $0.width.equalTo(buttonWidth)
            $0.height.equalTo(buttonWidth)
        }
        
        directMessageButton.snp.makeConstraints{
            $0.leading.equalTo(commentButton.snp.trailing).offset(12)
            $0.top.equalTo(likeButton.snp.top)
            $0.width.equalTo(buttonWidth)
            $0.height.equalTo(buttonWidth)
        }
        
        bookmarkButton.snp.makeConstraints{
            $0.trailing.equalToSuperview().inset(buttonInset)
            $0.top.equalTo(likeButton.snp.top)
            $0.width.equalTo(buttonWidth)
            $0.height.equalTo(buttonWidth)
        }
        
        currentLikedCountLabel.snp.makeConstraints{
            $0.leading.equalTo(likeButton.snp.leading)
            $0.trailing.equalTo(bookmarkButton.snp.trailing)
            $0.top.equalTo(likeButton.snp.bottom).offset(14)
        }
        
        contentLabel.snp.makeConstraints{
            $0.leading.equalTo(likeButton.snp.leading)
            $0.trailing.equalTo(bookmarkButton.snp.trailing)
            $0.top.equalTo(currentLikedCountLabel.snp.bottom).offset(8)
        }
        
        dateLabel.snp.makeConstraints{
            $0.leading.equalTo(likeButton.snp.leading)
            $0.trailing.equalTo(bookmarkButton.snp.trailing)
            $0.top.equalTo(contentLabel.snp.bottom).offset(8)
            $0.bottom.equalToSuperview().inset(16)
        }
    }
}
