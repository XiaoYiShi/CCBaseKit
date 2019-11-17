////
////  CCExtension_UIScrollView.swift
////  XcodeTest
////
////  Created by 史晓义 on 2019/10/29.
////  Copyright © 2019 XLTC. All rights reserved.
////
//
//import UIKit
//
//
//public extension UIScrollView
//{
//    
//    public var cc_insetT : CGFloat {
//        set {
//            var inset = self.contentInset
//            inset.top = newValue
//            self.contentInset = inset
//        }
//        get {
//            return self.contentInset.top
//        }
//    }
//    public var cc_insetB : CGFloat {
//        set {
//            var inset = self.contentInset
//            inset.bottom = newValue
//            self.contentInset = inset
//        }
//        get {
//            return self.contentInset.bottom
//        }
//    }
//    public var cc_insetL : CGFloat {
//        set {
//            var inset = self.contentInset
//            inset.left = newValue
//            self.contentInset = inset
//        }
//        get {
//            return self.contentInset.left
//        }
//    }
//    public var cc_insetR : CGFloat {
//        set {
//            var inset = self.contentInset
//            inset.right = newValue
//            self.contentInset = inset
//        }
//        get {
//            return self.contentInset.right
//        }
//    }
//    
//    //contentOffset
//    public var cc_offsetX : CGFloat {
//        set {
//            var offset = self.contentOffset
//            offset.x = newValue
//            self.contentOffset = offset
//        }
//        get {
//            return self.contentOffset.x
//        }
//    }
//    public var cc_offsetY : CGFloat {
//        set {
//            var offset = self.contentOffset
//            offset.y = newValue
//            self.contentOffset = offset
//        }
//        get {
//            return self.contentOffset.y
//        }
//    }
//    //contentSize
//    public var cc_contentW : CGFloat {
//        set {
//            var size = self.contentSize
//            size.width = newValue
//            self.contentSize = size
//        }
//        get {
//            return self.contentSize.width
//        }
//    }
//    public var cc_contentH : CGFloat {
//        set {
//            var size = self.contentSize
//            size.height = newValue
//            self.contentSize = size
//        }
//        get {
//            return self.contentSize.height
//        }
//    }
//}
//
//
//public extension UIScrollView
//{
//    /// 滚动到顶部 Top
//    public func cc_scrollToTop()
//    {
//        self.cc_offsetY = 0
//    }
//    /// 滚动到底部 Bottom
//    public func cc_scrollToBottom()
//    {
//        let different = cc_contentH-cc_h
//        if different > 0 {
//            self.cc_offsetY = different
//        }
//    }
//    /// 滚动到左侧 Left
//    public func cc_scrollToLeft()
//    {
//        self.cc_offsetX = 0
//    }
//    /// 滚动到右侧 Right
//    public func cc_scrollToRight()
//    {
//        let different = cc_contentW-cc_w
//        if different > 0 {
//            self.cc_offsetX = different
//        }
//    }
//}
