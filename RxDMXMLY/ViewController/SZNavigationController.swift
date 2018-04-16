//
//  SZNavigationController.swift
//  RxDMXMLY
//
//  Created by chaobi on 2018/4/10.
//  Copyright © 2018年 Sidney. All rights reserved.
//

import UIKit

class SZNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        DLog("init:\(type(of: self))")
        
        // 设置导航栏的样式
        navigationBar.setBackgroundImage(UIImage.color(kThemeWhiteColor), for: .any, barMetrics: .default)
        navigationBar.shadowImage = UIImage()
        
        // 标题样式
        let bar = UINavigationBar.appearance()
        bar.titleTextAttributes = [
            NSAttributedStringKey.foregroundColor : UIColor.black,
            NSAttributedStringKey.font : UIFont.systemFont(ofSize: 18)
        ]
        
        // 设置返回按钮的样式
        navigationBar.tintColor = kThemeBlackColor
        let barItem = UIBarButtonItem.appearance()
        // 返回按钮的文字样式
        barItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor : kThemeBlackColor], for: .normal)

    }
    deinit {
        DLog("deinit:\(type(of: self))")
    }

}

// MARK:- EVENT
extension SZBaseViewController {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        view.endEditing(true)
    }
}
