//
//  CCExtension_Bool.swift
//  XcodeTest
//
//  Created by 史晓义 on 2019/9/5.
//  Copyright © 2019 XLTC. All rights reserved.
//

import UIKit


//MARK: - 常用参数
public extension Bool
{
    static let cc_iPad     = (UIDevice.current.userInterfaceIdiom == .pad)
    static let cc_iPhone   = (UIDevice.current.userInterfaceIdiom == .phone)
    static let cc_iOS8     = (UIDevice.current.systemVersion as NSString).doubleValue >= 8.0
    static let cc_iOS9     = (UIDevice.current.systemVersion as NSString).doubleValue >= 9.0
    static let cc_iOS10    = (UIDevice.current.systemVersion as NSString).doubleValue >= 10.0
    static let cc_iOS11    = (UIDevice.current.systemVersion as NSString).doubleValue >= 11.0
    static let cc_iOS12    = (UIDevice.current.systemVersion as NSString).doubleValue >= 12.0
    static let cc_iOS13    = (UIDevice.current.systemVersion as NSString).doubleValue >= 13.0
}

//MARK: - 简单数据类型扩展
public extension Bool
{
    //Int
    var cc_int : Int {
        return self ? 1 : 0
    }
    
    //Float
    var cc_float : Float {
        return self ? Float(1.0) : 0
    }
    
    //Double
    var cc_double : Double {
        return self ? Double(1.0) : 0
    }
    
    //CGFloat
    var cc_cgFloat : CGFloat {
        
        return self ? CGFloat(1.0) : 0
    }
    
    //NSInteger
    var cc_integer: NSInteger {
        return self ? NSInteger(1.0) : 0
    }
    
    //String
    var cc_string : String {
        return self ? "true" : "false"
    }
    
    //NSNumber
    var cc_number: NSNumber {
        return NSNumber.init(value: self)
    }
}
