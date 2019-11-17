//
//  CCBaseKit.swift
//  CCBaseKit
//
//  Created by 史晓义 on 2019/11/17.
//  Copyright © 2019 FeatherBrowser. All rights reserved.
//
//import UIKit
//
//
///**
// 目录：
//
// - CCExtension
// 所有经过".cc"包装的方法或者类
//
// - Class
// 所有"CCKit"或者"CC"开头的类
//
// */
//
///**
// 结构：
//
// - CCExtension下的每个类都应该单独建立文件管理
//
// - 使用extension时，需要根据功能，给功能做出区分。
// 如： .cc下的frame和颜色背景，frame相关计算方法需要在CCExtension_UIView文件中写一个extension块，颜色背景也需要单独
// 写一个extension方法块，并在对应扩展前面加书签，方便查阅
//
// */
//
//
//
//
//
//public struct CCKit
//{}
//
//
//
//
//
//
//
//public class CC_Screen : NSObject
//{
//    public static let width  : CGFloat = UIScreen.main.bounds.size.width
//    public static let height : CGFloat = UIScreen.main.bounds.size.height
//}
////MARK: - func
//public func CC_Log<T>(_ message: T,
//               file: String = #file,
//               method: String = #function,
//               line: Int = #line)
//{
//    #if DEBUG
//    print("\((file as NSString).lastPathComponent)[\(line)], \(method): \(message)")
//    #endif
//}
//
//
//public extension UserDefaults
//{
//    /// 自定义扩展
//    public struct Ex {}
//}
///// 缓存字段
////extension UserDefaults.Ex
////{
////    /// web专用缓存空间
////    struct Web {
////        /// 有新的优惠券已领取待查看
////        static var XltcNewCoupon : Bool {
////            set {
////                UserDefaults.standard.set(newValue, forKey: "web_XltcNewCoupon")
////            }
////            get {
////                return UserDefaults.standard.bool(forKey: "web_XltcNewCoupon")
////            }
////        }
////    }
////    /// 是否在配送范围
////    static var isOutDelivery: Bool {
////        get {
////            return UserDefaults.standard.bool(forKey: "isOutDelivery")
////        }
////        set {
////            UserDefaults.standard.set(newValue, forKey: "isOutDelivery")
////        }
////    }
////    /// 用户token
////    static var user_Token: String? {
////        get {
////            return UserDefaults.standard.string(forKey: "user_Token")
////        }
////        set {
////            UserDefaults.standard.set(newValue, forKey: "user_Token")
////            UserDefaults.standard.synchronize()
////        }
////    }
////
////}
