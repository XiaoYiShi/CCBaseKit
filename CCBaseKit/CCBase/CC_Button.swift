//
//  CC_Button.swift
//  CCBaseKit
//
//  Created by YiCZB on 2020/1/6.
//

import UIKit

//MARK: - 处理MVVM结构的button
open class CC_Button: UIButton
{
    override public init(frame: CGRect) {
        super.init(frame: frame)
        cc_setUI()
        cc_setViewModel()
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
extension CC_Button : CC_MVVMProtocol
{
    open func cc_setUI(){}
    open func cc_updataUI(){}
    open func cc_setViewModel(){}
}

