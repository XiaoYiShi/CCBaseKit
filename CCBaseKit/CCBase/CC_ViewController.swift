//
//  CC_ViewController.swift
//  CCBaseKit
//
//  Created by YiCZB on 2020/1/6.
//  Copyright © 2020 FeatherBrowser. All rights reserved.
//

import UIKit

//MARK: - 处理MVVM结构的控制器
open class CC_ViewController: UIViewController
{
    override public func loadView() {
        super.loadView()
        view.backgroundColor = UIColor.white
        automaticallyAdjustsScrollViewInsets = false
        cc_setUI()
        cc_setViewModel()
    }
    override public func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension CC_ViewController : CC_MVVMProtocol
{
    open func cc_setUI(){}
    open func cc_updataUI(){}
    open func cc_setViewModel(){}
}
