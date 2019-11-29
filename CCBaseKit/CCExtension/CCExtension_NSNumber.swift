//
//  CCExtension_NSNumber.swift
//  XcodeTest
//
//  Created by 史晓义 on 2019/9/6.
//  Copyright © 2019 XLTC. All rights reserved.
//

import UIKit

//MARK: - 简单数据类型扩展
public extension NSNumber
{
    
    //Bool
    var cc_bool: Bool {
        return self.boolValue
    }
    
    //Int
    var cc_int : Int {
        return self.intValue
    }
    
    //Float
    var cc_float : Float {
        return self.floatValue
    }
    
    //Double
    var cc_double : Double {
        return self.doubleValue
    }
    
    //CGFloat
    var cc_cgFloat: CGFloat {
        return CGFloat( self.floatValue)
    }
    
    //NSInteger
    var cc_integer: NSInteger {
        return NSInteger(self.intValue)
    }
    
    //String
    var cc_string : String {
        return self.stringValue
    }
    
}
