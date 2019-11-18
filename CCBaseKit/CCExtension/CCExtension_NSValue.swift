//
//  CCExtension_NSValue.swift
//  XcodeTest
//
//  Created by 史晓义 on 2019/9/6.
//  Copyright © 2019 XLTC. All rights reserved.
//

import UIKit


public extension NSValue
{
    
    var cc_rect: CGRect {
        return self.cgRectValue
    }
    
    var cc_point: CGPoint {
        return self.cgPointValue
    }
    
    var cc_size: CGSize {
        return self.cgSizeValue
    }
    
    var cc_uiEdge: UIEdgeInsets {
        return self.uiEdgeInsetsValue
    }
    
    @available(iOS 5.0, *)
    var cc_uiOffset: UIOffset {
        return self.uiOffsetValue
    }
    
}


