//
//  CCExtension_UITextField.swift
//  XcodeTest
//
//  Created by 史晓义 on 2019/9/6.
//  Copyright © 2019 XLTC. All rights reserved.
//

import UIKit

//TODO:重新设计,默认值nil时候,不去配置
extension UITextField {

    /// 便利构造器, 快速的创建和设置一个UITextField
    public convenience init(font: UIFont, color: UIColor, keyboard: UIKeyboardType? = nil) {
        self.init()
        set(font: font, color: color, keyboard: keyboard)
    }
    
    /// 提供方便的方法设置文本框的字体, 字体颜色, 键盘类型, 对对齐方式等
    ///
    /// - Parameters:
    ///   - font: 设置字体
    ///   - color: 设置字体颜色
    ///   - alignment: 设置对齐方式
    ///   - keyboard: 设置键盘类型
    public func set(font: UIFont, color: UIColor, keyboard: UIKeyboardType? = nil) {
        self.font = font
        self.textColor = color
        if let keyboard = keyboard {
            keyboardType = keyboard
        }
    }
}

//MARK: - 快速设置UITextfield左右空出间距
public extension UITextField
{
    
    /// 添加左侧间距
    /// - Parameter width: 间距宽度
    func cc_addLeftSpace(_ width :CGFloat) -> Void {
        self.leftViewMode = .always
        let view = UIView.init()
        view.frame = .init(x: 0, y: 0, width: width, height: 2)
        view.backgroundColor = .clear
        self.leftView = view
    }
    /// 添加t右侧间距
    /// - Parameter width: 间距宽度
    func cc_addRightSpace(_ width :CGFloat) -> Void {
        self.rightViewMode = .always
        let view = UIView.init()
        view.frame = .init(x: 0, y: 0, width: width, height: 2)
        view.backgroundColor = .clear
        self.rightView = view
    }
}
