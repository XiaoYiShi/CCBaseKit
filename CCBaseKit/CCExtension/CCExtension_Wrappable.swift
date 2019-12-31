
//
//  CCExtension_Wrappable.swift
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
