//
//  Player.swift
//  UICollectionViewController-Rebeloper
//
//  Created by Sena Kurtak on 7.10.2022.
//

// cellerde futbolcunun fotoğrafı,ismi, yaşı, mevkisi, ve etkin kullandığı ayağı(sağ ayak, sol ayak) olmalıdır.


import UIKit

class Player {
    
    let name : String?
    let photo : UIImage?
    let position : String?
    let isLeft : String?
    init(name: String?, photo: UIImage?, position : String?,isLeft : String?) {
        self.name = name
        self.photo = photo
        self.position = position
        self.isLeft = isLeft
    }

}


var playerArr = [
    Player(name: "ALABA", photo: UIImage(named:"ALABA")!, position: "HB/FB", isLeft: "sol"),
Player(name: "ASENSIO", photo: UIImage(named:"ASENSIO"), position: "HB/FB", isLeft: "sol"),
Player(name: "BENZEMA", photo: UIImage(named:"BENZEMA"), position: "HB/FB", isLeft: "sol"),
Player(name: "CAMAVINGA", photo: UIImage(named:"CAMAVINGA"), position: "HB/FB", isLeft: "sol"),
Player(name: "CARVAJAL", photo: UIImage(named:"CARVAJAL"), position: "HB/FB", isLeft: "sol"),
Player(name: "CEBALLOS", photo: UIImage(named:"CEBALLOS"), position: "HB/FB", isLeft: "sol"),
Player(name: "COURTOIS", photo: UIImage(named:"COURTOIS"), position: "HB/FB", isLeft: "sol"),
Player(name: "HAZARD", photo: UIImage(named:"HAZARD"), position: "HB/FB", isLeft: "sol"),
Player(name: "KROOS", photo: UIImage(named:"KROOS"), position: "HB/FB", isLeft: "sol"),
Player(name: "LUCAS", photo: UIImage(named:"LUCAS"), position: "HB/FB", isLeft: "sol"),
Player(name: "LUNIN", photo: UIImage(named:"LUNIN"), position: "HB/FB", isLeft: "sol"),
Player(name: "MARIANO", photo: UIImage(named:"MARIANO"), position: "HB/FB", isLeft: "sol"),
Player(name: "MENDY", photo: UIImage(named:"MENDY"), position: "HB/FB", isLeft: "sol"),
Player(name: "MILITAO", photo: UIImage(named:"MILITAO"), position: "HB/FB", isLeft: "sol"),
Player(name: "MODRIC", photo: UIImage(named:"MODRIC"), position: "HB/FB", isLeft: "sol"),
Player(name: "NACHO", photo: UIImage(named:"NACHO"), position: "HB/FB", isLeft: "sol"),
Player(name: "ODRIOZOLA", photo: UIImage(named:"ODRIOZOLA"), position: "HB/FB", isLeft: "sol"),
Player(name: "RUDIGER", photo: UIImage(named:"RUDIGER"), position: "HB/FB", isLeft: "sol"),
Player(name: "TCHOUAMENI", photo: UIImage(named:"TCHOUAMENI"), position: "HB/FB", isLeft: "sol"),
Player(name: "VALLEJO", photo: UIImage(named:"VALLEJO"), position: "HB/FB", isLeft: "sol"),
Player(name: "VALVERDE", photo: UIImage(named:"VALVERDE"), position: "HB/FB", isLeft: "sol"),
Player(name: "VINICIUS", photo: UIImage(named:"VINICIUS"), position: "HB/FB", isLeft: "sol")]
