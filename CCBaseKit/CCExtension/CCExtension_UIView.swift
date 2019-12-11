//
//  CCExtension_UIView.swift
//  XcodeTest
//
//  Created by 史晓义 on 2019/9/5.
//  Copyright © 2019 XLTC. All rights reserved.
//

import UIKit

public extension UIView
{
    convenience init(bgColor : UIColor) {
        self.init()
        backgroundColor = bgColor
    }
}

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
//MARK: - 形状
extension UIView
{
    /// 快速设置view常用layer参数
    /// - Parameters:
    ///   - radius: 圆角
    ///   - wdith: 边框    不设置边框就传0
    ///   - color: 边框颜色 可不传
    func layerWith(radius:CGFloat ,wdith:CGFloat ,color:UIColor ) -> Void
    {
        self.layer.masksToBounds    = true
        self.layer.cornerRadius     = radius
        self.layer.borderWidth      = wdith
        self.layer.borderColor      = color.cgColor
    }
}

//MARK: - 动画
extension UIView
{
    /// 旋转动画
    func addAnimation_rotation()
    {
        let rotationAnimation = CABasicAnimation.init(keyPath: "transform.rotation.z")
        rotationAnimation.toValue = NSNumber.init(value: Float.pi * 2)
        rotationAnimation.duration = 1
        rotationAnimation.isCumulative = true
        rotationAnimation.repeatCount = 3
        self.layer.add(rotationAnimation, forKey: "rotationAnimation")
    }
}

