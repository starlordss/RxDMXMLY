//
//  Common.swift
//  RxDMXMLY
//
//  Created by chaobi on 2018/4/10.
//  Copyright © 2018年 Sidney. All rights reserved.
//

import UIKit

/// 屏幕宽度
let kScreenW = UIScreen.main.bounds.width
/// 屏幕高度
let kScreenH = UIScreen.main.bounds.height
/// iPhoneX
let isX = (kScreenW == 375.0 && kScreenH == 812.0 ? true : false)
/// 状态栏的高度
let kStatusBarH = UIApplication.shared.statusBarFrame.size.height
/// TabBar的高度
let kTabBarH :CGFloat = isX ? 83.0 : 49.0
/// 导航栏的高度
let kNaviBarH : CGFloat = isX ? 88.0 : 64.0
/// 导航栏+ 状态栏高度
let kTopH = kNaviBarH + kStatusBarH
/// X底部的高度
let kXBottomH: CGFloat = 34.0
/// X顶部的高度
let kXTopH : CGFloat = 24.0

// MARK:- 常量
struct MetricGlobal {
    static let padding: CGFloat = 10.0
    static let margin: CGFloat = 10.0
}


// MARK:- 颜色
func kRGBA(r: CGFloat, g: CGFloat, b:CGFloat, a:CGFloat) -> UIColor {
    return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
}


// MARK:- 其他颜色
// http://www.sioe.cn/yingyong/yanse-rgb-16/
let kThemeWhiteColor = UIColor.hexColor(0xFFFFFF)
let kThemeWhiteSmokeColor = UIColor.hexColor(0xF5F5F5)
let kThemeMistyRoseColor = UIColor.hexColor(0xFFE4E1)  // 薄雾玫瑰
let kThemeGainsboroColor = UIColor.hexColor(0xF3F4F5)  // 亮灰色
let kThemeOrangeRedColor = UIColor.hexColor(0xFF4500)  // 橙红色
let kThemeLimeGreenColor = UIColor.hexColor(0x32CD32)  // 酸橙绿
let kThemeSnowColor = UIColor.hexColor(0xFFFAFA)
let kThemeLightGreyColor = UIColor.hexColor(0xD3D3D3)
let kThemeGreyColor = UIColor.hexColor(0xA9A9A9)
let kThemeTomatoColor = UIColor.hexColor(0xF7583B)
let kThemeDimGrayColor = UIColor.hexColor(0x696969)
let kThemeBlackColor = UIColor.hexColor(0x000000)
let kThemeBackgroundColor = UIColor.hexColor(0xF4F4F4)

// MARK:- 日志打印
func DLog<T>(_ msg : T, file : String = #file, funcName : String = #function, lineNum : Int = #line) {
    #if DEBUG
    let fileName = (file as NSString).lastPathComponent
    print("\(fileName):(\(lineNum))-\(msg)")
    #endif
}
