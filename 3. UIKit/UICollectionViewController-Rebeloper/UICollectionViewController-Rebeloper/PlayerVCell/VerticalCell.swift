//
//  VerticalCell.swift
//  UICollectionViewController-Rebeloper
//
//  Created by Sena Kurtak on 7.10.2022.
//

// Dikey olanda ise 11 tane yan yana ikişer olmak üzere tuttuğunuz takımın oyuncularını yazınız. Buradaki cellerde futbolcunun fotoğrafı,ismi, yaşı, mevkisi, ve etkin kullandığı ayağı(sağ ayak, sol ayak) olmalıdır.

import UIKit

class VerticalCell: UICollectionViewCell {
    
    let playerName = UILabel()
    let playerPhoto = UIImageView()
    let playerPosition = UILabel()
    let playerIsLeft = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(playerName)
        contentView.addSubview(playerPhoto)
        contentView.addSubview(playerPosition)
        contentView.addSubview(playerIsLeft)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(){
        playerPhoto.frame = CGRect(x: 0, y: 0, width: screenWidth * 0.60, height: 0.60 * screenWidth)
    }
}
