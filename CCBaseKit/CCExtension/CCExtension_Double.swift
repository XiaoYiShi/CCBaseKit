//
//  CCExtension_Double.swift
//  XcodeTest
//
//  Created by 史晓义 on 2019/9/6.
//  Copyright © 2019 XLTC. All rights reserved.
//

import UIKit

//MARK: - 简单数据类型扩展
public extension Double
{
    //Bool
    var cc_bool : Bool? {
        return self > 0
    }
    
    //Int
    var cc_int : Int {
        return Int(self)
    }
    
    //Float
    var cc_float : Float {
        return Float(self)
    }
    
    //CGFloat
    var cc_cgFloat : CGFloat {
        return CGFloat(self)
    }
    
    //NSInteger
    var cc_integer: NSInteger {
        return NSInteger(self)
    }
    
    //String
    var cc_string : String {
        return "\(self)"
    }
    
    //NSNumber
    var cc_number: NSNumber {
        return NSNumber.init(value: self)
    }
}
