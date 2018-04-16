//
//  UIColor+HexColor.swift
//  RxDMXMLY
//
//  Created by chaobi on 2018/4/10.
//  Copyright © 2018年 Sidney. All rights reserved.
//

import UIKit

extension UIColor {
    static func hexColor(_ hexColor : Int64) -> UIColor {
        let red = ((CGFloat)((hexColor & 0xFF0000) >> 16))/255.0;
        let green = ((CGFloat)((hexColor & 0xFF00) >> 8))/255.0;
        let blue = ((CGFloat)(hexColor & 0xFF))/255.0;
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
}
