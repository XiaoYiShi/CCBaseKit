//
//  CC_CollectionViewCell.swift
//  CCBaseKit
//
//  Created by YiCZB on 2020/1/6.
//  Copyright © 2020 FeatherBrowser. All rights reserved.
//

import UIKit

//MARK: - 处理MVVM结构的collectionView cell
open class CC_CollectionViewCell: UICollectionViewCell
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
extension CC_CollectionViewCell : CC_MVVMProtocol
{
    open func cc_setUI(){}
    open func cc_updataUI(){}
    open func cc_setViewModel(){}
}
