//
//  CC_Protocol.swift
//  CCBaseKit
//
//  Created by YiCZB on 2020/1/6.
//  Copyright © 2020 FeatherBrowser. All rights reserved.
//

import UIKit

//MARK: - 处理MVVM结构的协议
@objc public protocol CC_MVVMProtocol
{
    func cc_setUI()
    func cc_updataUI()
    func cc_setViewModel()
}
public extension CC_MVVMProtocol
{
    func cc_setUI(){}
    func cc_updataUI(){}
    func cc_setViewModel(){}
}

