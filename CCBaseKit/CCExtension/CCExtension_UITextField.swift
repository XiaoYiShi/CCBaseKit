//
//  CCExtension_UITextField.swift
//  XcodeTest
//
//  Created by 史晓义 on 2019/9/6.
//  Copyright © 2019 XLTC. All rights reserved.
//

import UIKit

public extension UITextField
{
    
}
//MARK: - 快速设置UITextfield左右空出间距
public extension UITextField
{
    
    /// 添加左侧间距
    /// - Parameter width: 间距宽度
    func cc_addLeftSpace(_ width :CGFloat) -> Void {
        self.leftViewMode = .always
        let view = UIView.init()
        view.frame = .init(x: 0, y: 0, width: width, height: 2)
        view.backgroundColor = .clear
        self.leftView = view
    }
    /// 添加t右侧间距
    /// - Parameter width: 间距宽度
    func cc_addRightSpace(_ width :CGFloat) -> Void {
        self.rightViewMode = .always
        let view = UIView.init()
        view.frame = .init(x: 0, y: 0, width: width, height: 2)
        view.backgroundColor = .clear
        self.rightView = view
    }
}
