//
//  CCExtension_UILabel.swift
//  CCBaseKit
//
//  Created by YiCZB on 2019/12/31.
//

import UIKit

extension UILabel {
    
    /// 便利构造方法, 快速的创建一个label并设置一些属性
    ///
    /// - Parameters:
    ///   - font: label上的字体
    ///   - textColor: 字体颜色
    ///   - alignment: 字体对齐方式
    public convenience init(font: UIFont, textColor: UIColor, alignment: NSTextAlignment? = nil) {
        self.init(frame: CGRect.zero)
        set(font: font, textColor: textColor, alignment: alignment)
    }
    
    /// 提供方法便捷的设置label的属性
    ///
    /// - Parameters:
    ///   - font: 设置字体
    ///   - textColor: 设置文字颜色
    ///   - alignment: 设置文字对其方式
    public func set(font: UIFont, textColor: UIColor, alignment: NSTextAlignment? = nil) {
        self.font = font
        self.textColor = textColor
        //当对齐方式不为空时候,重置对齐方式
        if let alignment = alignment {
            self.textAlignment = alignment
        }
    }
}
