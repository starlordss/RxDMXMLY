//
//  SZBaseViewController.swift
//  RxDMXMLY
//
//  Created by chaobi on 2018/4/10.
//  Copyright © 2018年 Sidney. All rights reserved.
//

import UIKit

class SZBaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        DLog("init: \(type(of: self))")
        
        view.backgroundColor = kThemeGainsboroColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
// MARK:- 事件 (部分页面失效)
extension SZNavigationController {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        // 注销 键盘
        view.endEditing(true)
    }
}

