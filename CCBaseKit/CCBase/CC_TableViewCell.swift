//
//  CC_TableViewCell.swift
//  CCBaseKit
//
//  Created by YiCZB on 2020/1/6.
//  Copyright © 2020 FeatherBrowser. All rights reserved.
//

import UIKit

//MARK: - 处理MVVM结构的tableView cell
open class CC_TableViewCell: UITableViewCell
{
    override public init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        cc_setUI()
        cc_setViewModel()
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
extension CC_TableViewCell : CC_MVVMProtocol
{
    open func cc_setUI(){}
    open func cc_updataUI(){}
    open func cc_setViewModel(){}
}
