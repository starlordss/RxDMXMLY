//
//  UIImage+Color.swift
//  RxDMXMLY
//
//  Created by chaobi on 2018/4/10.
//  Copyright © 2018年 Sidney. All rights reserved.
//

import UIKit

extension UIImage {
    
    /// 将颜色转为UIImage
    public static func color(_ color: UIColor) -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: 1.0, height: 1.0)
        UIGraphicsBeginImageContextWithOptions(rect.size, false, UIScreen.main.scale)
        let ctx = UIGraphicsGetCurrentContext()
        ctx?.setFillColor(color.cgColor)
        var img = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        let imgData = UIImageJPEGRepresentation(img, 1.0)!
        img = UIImage(data: imgData)!
        return img
    }
}
