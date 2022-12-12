//
//  HorizontalCell.swift
//  UICollectionViewController-Rebeloper
//
//  Created by Sena Kurtak on 7.10.2022.
//

import UIKit

class HorizontalCell: UICollectionViewCell {
    let movieCoverImgView = UIImageView()
    let movieTitle = UILabel()
    let movieGenre = UILabel()
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(movieCoverImgView)
        contentView.addSubview(movieTitle)
        contentView.addSubview(movieGenre)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(){
        movieCoverImgView.frame = CGRect(x: 0, y: 0, width: screenWidth * 0.60, height: 0.60 * screenWidth)
    }
}
