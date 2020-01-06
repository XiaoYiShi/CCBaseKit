//
//  CCBaseKit.swift
//  CCBaseKit
//
//  Created by 史晓义 on 2019/11/17.
//  Copyright © 2019 FeatherBrowser. All rights reserved.
//
import UIKit


/**
 目录：

 - CCExtension
 所有经过".cc"包装的方法或者类

 - Class
 所有"CCKit"或者"CC"开头的类

 */

/**
 结构：

 - CCExtension下的每个类都应该单独建立文件管理

 - 使用extension时，需要根据功能，给功能做出区分。
 如： .cc下的frame和颜色背景，frame相关计算方法需要在CCExtension_UIView文件中写一个extension块，颜色背景也需要单独
 写一个extension方法块，并在对应扩展前面加书签，方便查阅

 */





public struct CCKit
{}








//MARK: - func
public func CC_Log<T>(_ message: T,
               file: String = #file,
               method: String = #function,
               line: Int = #line)
{
    #if DEBUG
    print("\((file as NSString).lastPathComponent)[\(line)], \(method): \(message)")
    #endif
}



extension UIAlertController {
    
    public enum ActionStyle {
        case singleAction   //有一个按钮
        case doubleAction   //有两个按钮
    }
    
    /// 弹窗提醒一段文本信息, 一段时间后自动消失
    ///
    /// - Parameters:
    ///   - msg: 消息内容
    ///   - duration: 消息显示时长
    public static func show(_ msg: String, duration: TimeInterval = 1.5) {
        let alertController = UIAlertController(title: nil, message: msg, preferredStyle: .alert)
        topController()?.present(alertController, animated: true, completion: nil)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+duration) {
            alertController.dismiss(animated: true, completion: nil)
        }
    }
    
    /// 弹窗提醒, 可以设置title, msg, 可以自定义一个按钮的标题, 可以监听按钮的回点击事件.
    ///
    /// - Parameters:
    ///   - title: 弹窗标题
    ///   - msg: 弹窗展示详细信息
    ///   - actionTitle: 按钮标题
    ///   - completion: 点击按钮的回调事件
    public static func show(title: String?,
                    msg: String?,
                    actionTitle: String = "确定",
                    handler: ((UIAlertAction) -> Void)? = nil) {
        let action = UIAlertAction(title: actionTitle, style: .default, handler: handler)
        show(title: title, msg: msg, style: .alert, actions: action)
    }
    
    
    /// 展示一个弹窗提醒, 可安装多个action
    ///
    /// - Parameters:
    ///   - title: 弹窗的标题
    ///   - msg: 弹窗的信息
    ///   - style: 弹窗样式
    ///   - actions: actions, 可变参数, 可以安装n个
    public static func show(title: String?,
                    msg: String?,
                    style: UIAlertController.Style = .alert,
                    actions: UIAlertAction...) {
        let alertController = UIAlertController(title: title, message: msg, preferredStyle: style)
        for action in actions {
            alertController.addAction(action)
        }
        topController()?.present(alertController, animated: true, completion: nil)
    }
    
    /// 扩展addAction方法, 便捷的添加一个Action
    /// - Parameters:
    ///   - title: 设置action的title
    ///   - style: 设置style
    ///   - handler: 设置回调
    public func addAction(title: String?, style: UIAlertAction.Style, handler: ((UIAlertAction) -> Swift.Void)? = nil) {
        let action = UIAlertAction(title: title, style: style, handler: handler)
        addAction(action)
    }
    
    /// 给UIAlertController添加一个数组
    ///
    /// - Parameter actions: action数组
    public func addActions(_ actions: UIAlertAction...) {
        for action in actions {
            addAction(action)
        }
    }
}
//TODO:精简一下,提供的东西有点太多了
fileprivate func topController() -> UIViewController? {
    var aboveController = UIApplication.shared.delegate?.window??.rootViewController
    while aboveController?.presentedViewController != nil {
        aboveController = aboveController?.presentedViewController
    }
    return aboveController
}


//兼容JS习惯的方法名
/// 便捷方法弹出一个带"确认"按钮的alert
public func Alert(msg: String) {
    UIAlertController.show(title: nil, msg: msg, actionTitle: "确定", handler: nil)
}
//兼容JAVA习惯的类型名
struct System
{
    struct out {
        static func println(_ items: Any..., separator: String = " ", terminator: String = "\n") {
            debugPrint(items)
        }
    }
}
//兼容PHP习惯的输出
func echo(_ items: Any..., separator: String = " ", terminator: String = "\n") {
    debugPrint(items)
}

