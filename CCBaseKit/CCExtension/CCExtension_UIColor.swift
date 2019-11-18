//
//  CCExtension_UIColor.swift
//  XcodeTest
//
//  Created by 史晓义 on 2019/9/5.
//  Copyright © 2019 XLTC. All rights reserved.
//

import UIKit

//MARK: - 快速初始化扩展
public extension UIColor
{
    /// 初始化一个UIColor
    ///
    /// - Parameters:
    ///   - r: red
    ///   - g: green
    ///   - b: blue
    /// - Returns: UIColor
    static func cc_init(r: CGFloat, g: CGFloat, b: CGFloat)  -> UIColor {
        return UIColor.cc_init(r: r, g: g, b: b, a: 1)
    }
    
    /// 初始化一个UIColor
    ///
    /// - Parameters:
    ///   - r: red
    ///   - g: green
    ///   - b: blue
    ///   - a: alpha
    /// - Returns: UIColor
    static func cc_init(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat) -> UIColor {
        return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
    }
    
    /// 初始化一个UIColor
    ///
    /// - Parameter rgb: rgb色值
    /// - Returns: UIColor
    static func cc_init(rgb : Int) -> UIColor
    {
        return UIColor.cc_init(rgb: rgb, a: 1)
    }
    
    /// 初始化一个UIColor
    /// - Parameters:
    ///   - rgb: rgb色值
    ///   - a: 透明度
    static func cc_init(rgb : Int, a:CGFloat) -> UIColor
    {
        // rgb颜色转换（16进制->10进制）
        return UIColor(
            red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgb & 0x0000FF) / 255.0,
            alpha: a
        )
    }
    
    /// 初始化一个UIColor
    ///
    /// - Parameter rgb: rgb色值, "cccccc"
    /// - Returns: UIColor
    static func cc_init(rgb : String) -> UIColor
    {
        return UIColor.cc_init(rgb: rgb, a: 1)
    }
    
    /// 初始化一个UIColor
    /// - Parameters:
    ///   - rgb: Parameter rgb: rgb色值, "cccccc"
    ///   - a: 透明度
    static func cc_init(rgb : String, a: CGFloat) -> UIColor
    {
        //字符串转16进制Int后再生成color
        //字符串转16进制Int，0x前缀要不要都行，abcdef大小写不限制，#无法识别需要过滤掉
        let c = Scanner.init(string: rgb.replacingOccurrences(of: "#", with: ""))
        var b:UInt32 = 0
        if withUnsafeMutablePointer(to: &b, {c.scanHexInt32($0)}) {
            return UIColor.cc_init(rgb: Int(b),a:a)
        }
        return UIColor.clear
    }
}
