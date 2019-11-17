//
//  CCExtension_CALayer.swift
//  XcodeTest
//
//  Created by 史晓义 on 2019/9/5.
//  Copyright © 2019 XLTC. All rights reserved.
//

import UIKit

//MARK: - frame扩展
public extension CALayer
{
    //x
    var cc_x: CGFloat {
        get {
            return self.frame.origin.x
        }
        set {
            var frame = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
    }
    
    //y
    var cc_y: CGFloat {
        get {
            return self.frame.origin.y
        }
        set {
            var frame = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
    }
    
    //width
    var cc_w: CGFloat {
        get {
            return self.frame.size.width
        }
        set {
            var frame = self.frame
            frame.size.width = newValue
            self.frame = frame
        }
    }
    
    //height
    var cc_h: CGFloat {
        get {
            return self.frame.size.height
        }
        set {
            var frame = self.frame
            frame.size.height = newValue
            self.frame = frame
        }
    }
    
    //size
    var cc_size: CGSize {
        get {
            return self.frame.size
        }
        set {
            var frame = self.frame
            frame.size = newValue
            self.frame = frame
        }
    }
    
    //origin
    var cc_origin: CGPoint {
        get {
            return self.frame.origin
        }
        set {
            var frame = self.frame
            frame.origin = newValue
            self.frame = frame
        }
    }
}

//extension CALayer
//{
//    func corner(_ radius:CGFloat) -> Void {
//        self.masksToBounds    = true
//        self.cornerRadius     = radius
//    }
//
//    func border(_ wdith:CGFloat ,_ color:UIColor? ) -> Void {
//        self.masksToBounds    = true
//        self.borderWidth      = wdith
//        self.borderColor      = color?.cgColor
//    }
//
//    func shadow(
//        _ Opacity:Float,
//        _ rgbColor:Int,
//        _ Radius:CGFloat,
//        _ Offset:CGSize
//        ) -> Void
//    {
//        shadowOpacity = Opacity// 阴影透明度
//        shadowColor  = UIColor.cc_init(rgb: rgbColor).cgColor// 阴影的颜色
//        shadowRadius = Radius// 阴影扩散的范围控制
//        shadowOffset = Offset// 阴影的范围
//    }
//}
