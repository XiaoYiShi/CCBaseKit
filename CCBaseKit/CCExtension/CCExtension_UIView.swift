//
//  CCExtension_UIView.swift
//  XcodeTest
//
//  Created by 史晓义 on 2019/9/5.
//  Copyright © 2019 XLTC. All rights reserved.
//

import UIKit



//MARK: - frame扩展
public extension UIView
{
    /// x
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
    
    /// y
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
    
    /// width
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
    
    /// height
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
    
    /// size
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
    
    /// origin
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



//MARK: - 值转换
//public extension UIView
//{
//    /// 以View生成image
//    public var cc_image: UIImage? {
//        return UIImage.cc_init(view: self)
//    }
//
//}

//extension UIViewController {
//
//
//    var cc_navC : UINavigationController? {
//        return self.navigationController
//    }
//
//
//}
