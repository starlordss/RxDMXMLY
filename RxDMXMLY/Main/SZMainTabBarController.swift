//
//  SZMainTabBarController.swift
//  RxDMXMLY
//
//  Created by chaobi on 2018/4/10.
//  Copyright © 2018年 Sidney. All rights reserved.
//

import UIKit

//var mainTabBarController : SZMainTabBarController?

class SZMainTabBarController: UITabBarController {
    
    // 播放按钮视图
    lazy var playView = SZTabBarPlayView();

    override func viewDidLoad() {
        super.viewDidLoad()
        // 设置代理
        self.delegate = self;
        // 修改tabbar的外观
        UITabBar.appearance().isTranslucent = false;
        UITabBar.appearance().barTintColor = kThemeWhiteColor
        UITabBar.appearance().tintColor = kThemeTomatoColor
        UITabBar.appearance().backgroundImage = UIImage.init()
        UITabBar.appearance().shadowImage = UIImage.init()
        
        //
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor: kThemeBlackColor], for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor : kThemeTomatoColor], for: .selected)
        
        //
        self.tabBar.layer.shadowColor = kThemeGreyColor.cgColor
        self.tabBar.layer.shadowOpacity = 0.8
        self.tabBar.layer.shadowOffset = CGSize(width: 0, height: -1)
        self.tabBar.layer.shadowRadius = 3.0
        
        // 初始化子控制器
        
        // 初始化播放按钮
        self.setupPlayView()
        
    }

}

// MARK:- 初始化子控制器
extension SZMainTabBarController {
    // MARK:- 是否显示播放按钮
    func isHiddenPlayView(_ isHidden: Bool)  {
        playView.isHidden = isHidden
    }
    
    // MARK:- 初始化播放按钮
    private func setupPlayView() {
        view.addSubview(playView)
        
    }
    
    // MARK:- 初始化子控制器
    private func setupSubViewControllers() {
        let classNames = ["home","Hear", "Find", "Mine"]
        let titles = ["首页", "我听", "发现", "我的"];
        var tabs: [UIViewController] = []
        let projectName = self.projectName()
        
        for i in 0..<classNames.count {
            let clsName = classNames[i]
            // 转为小写
            let lowStr = clsName.lowercased()
            let cls = NSClassFromString(projectName + "HC" + clsName + "ViewController") as! UIViewController.Type
            let vc = cls.init()
            vc.title = titles[i]
            let image = UIImage(named: "tabbar_icon_" + lowStr + "_normal")
            let selImage = UIImage(named: "tabbar_icon_" + lowStr + "_pressed")
            
            let item: UITabBarItem = UITabBarItem(title: nil, image: image, selectedImage: selImage)
            item.imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: -8, right: 0)
            vc.tabBarItem = item;
            
            // FIXME: dddddddddddd
//            let navVc =
        }
    }
    
    private func projectName() -> String {
        guard let infoDict = Bundle.main.infoDictionary else {
            return "."
        }
        let key = kCFBundleExecutableKey as String
        guard let value = infoDict[key] as? String else {
            return "."
        }
        return value + "."
    }
    
}

// MARK:- UITabBarControllerDelegate
extension SZMainTabBarController: UITabBarControllerDelegate {
    
}
