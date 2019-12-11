
//
//  XLTC.swift
//  XcodeTest
//
//  Created by 史晓义 on 2019/9/5.
//  Copyright © 2019 XLTC. All rights reserved.
//

import UIKit




//==================================================================================================
/**
 Wrappable, namespace包装CC框架下的所有计算方法
 xx.cc.xx语法，cc是包装层，本项目独立的一套方法体系
 需要使用代理自实现所有需要包装方法
 */

/**
 where WrappedType : UIView 所有UIView及子类都可实现该方法
 where WrappedType == UIView 仅UIView可实现该方法
 冒号“:”对继承做了限定，等号"=="对类型做了限定。
 直接判等号“==”会有编译器拼写检查bug，调用cc时会出现所有的联想提示，非必要的简单类型请使用“:”
 */

//MARK: - CCKit包装
//public protocol CCKit_Wrappable {
//    associatedtype wrappedType
//    static var cc: CCKit_Wrapper<wrappedType>.Type { get set }
//    var cc: CCKit_Wrapper<wrappedType> { get set }
//}
//extension CCKit_Wrappable {
//    public static var cc: CCKit_Wrapper<Self>.Type {
//        get { return CCKit_Wrapper<Self>.self }
//        //不实现，实际代码中没有对这个壳做赋值操作的，但是要保留set，不然会对壳里面的协议set造成影响，导致拼写检查不通过
//        set {}
//    }
//    public var cc: CCKit_Wrapper<Self> {
//        get { return CCKit_Wrapper(self) }
//        //不实现，实际代码中没有对这个壳做赋值操作的，但是要保留set，不然会对壳里面的协议set造成影响，导致拼写检查不通过
//        set {}
//    }
//}
//
//public struct CCKit_Wrapper<T> {
//    public let wrappedValue: T
//    public init(_ wrappedValue: T) {
//        self.wrappedValue = wrappedValue
//    }
//}

//==================================================================================================



//所有的UIView及子类都可使用该协议
//extension NSObject  : CCKit_Wrappable {}

//extension Bool      : CCKit_Wrappable {}

//extension Int       : CCKit_Wrappable {}

//extension Float     : CCKit_Wrappable {}

//extension Double    : CCKit_Wrappable {}

//extension Array     : CCKit_Wrappable {}

//extension Dictionary: CCKit_Wrappable {}

//extension String    : CCKit_Wrappable {}

//extension Data      : CCKit_Wrappable {}




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


//extension UIBarButtonItem {
//
//    /// 自定义方法创建
//    public convenience init(title: String, target: Any?, action:Selector?) {
//        let rightItem = UIButton(type: .custom)
//        rightItem.setTitle(title, for: .normal)
//        rightItem.setTitleColor(UIColor.white, for: .normal)
//        rightItem.titleLabel?.font = UIFont.systemFont(ofSize: 13)
//        rightItem.contentHorizontalAlignment = .center
//        if let target = target, let action = action {
//            rightItem.addTarget(target, action: action, for: .touchUpInside)
//        }
//        let fitSize = rightItem.sizeThatFits(CGSize.zero)
//        rightItem.frame = CGRect(x: 0, y: 0, width: fitSize.width + 4, height: 40)
//        self.init(customView: rightItem)
//    }
//}
