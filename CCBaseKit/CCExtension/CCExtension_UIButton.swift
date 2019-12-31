//
//  CCExtension_UIButton.swift
//  CCBaseKit
//
//  Created by YiCZB on 2019/12/31.
//

import UIKit

extension UIButton {
    
    /// 提供遍历构造器 设置UIButton的属性
    ///
    /// - Parameters:
    ///   - font: 设置标题字体
    ///   - titleColor: 设置标题颜色
    ///   - title: 设置标题
    public convenience init(font: UIFont, titleColor: UIColor?) {
        self.init(type: .custom)
        set(font: font, titleColor: titleColor)
    }

    /// 提供便捷方法设置UIButton的属性
    ///
    /// - Parameters:
    ///   - font: 设置标题字体
    ///   - titleColor: 设置标题颜色
    ///   - title: 设置标题
    public func set(font: UIFont, titleColor: UIColor?) {
        titleLabel?.font = font
        if let titleColor = titleColor { setTitleColor(titleColor, for: .normal) }
    }
    
    /// 设置文字,图像
    public func set(title: String?, image: UIImage?, state: UIControl.State = .normal) {
        if let title = title { setTitle(title, for: state) }
        if let image = image { setImage(image, for: state) }
    }
}
