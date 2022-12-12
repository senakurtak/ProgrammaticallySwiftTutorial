//
//  DeviceSize.swift
//  Anchors
//
//  Created by Sena Kurtak on 28.09.2022.
//

import Foundation
import UIKit

var screenWidth = CGFloat()
var screenHeight = CGFloat()

func getDeviceSize(view: UIView){
    screenWidth = view.frame.size.width
    screenHeight = view.frame.size.height
}
