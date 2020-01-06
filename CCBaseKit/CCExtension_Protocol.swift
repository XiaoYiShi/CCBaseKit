//
//  CCExtension_Protocol.swift
//  CCBaseKit
//
//  Created by YiCZB on 2020/1/6.
//

import UIKit


//MARK: - 处理MVVM结构的协议
protocol CCMVVMProtocol
{
    func cc_setUI()
    func cc_updataUI()
    func cc_setViewModel()
}
extension CCMVVMProtocol
{
    func cc_setUI(){}
    func cc_updataUI(){}
    func cc_setViewModel(){}
}

//MARK: - 处理MVVM结构的控制器
class CCViewController: UIViewController
{
    override func loadView() {
        super.loadView()
        view.backgroundColor = UIColor.white
        automaticallyAdjustsScrollViewInsets = false
        cc_setUI()
        cc_setViewModel()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension CCViewController : CCMVVMProtocol
{
    func cc_setUI(){}
    func cc_updataUI(){}
    func cc_setViewModel(){}
}
//MARK: - 处理MVVM结构的view
class CCView: UIView
{
    override init(frame: CGRect) {
        super.init(frame: frame)
        cc_setUI()
        cc_setViewModel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
extension CCView : CCMVVMProtocol
{
    func cc_setUI(){}
    func cc_updataUI(){}
    func cc_setViewModel(){}
}
//MARK: - 处理MVVM结构的tableView cell
class CCTableViewCell: UITableViewCell
{
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        cc_setUI()
        cc_setViewModel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
extension CCTableViewCell : CCMVVMProtocol
{
    func cc_setUI(){}
    func cc_updataUI(){}
    func cc_setViewModel(){}
}

//MARK: - 处理MVVM结构的collectionView cell
class CCCollectionViewCell: UICollectionViewCell
{
    override init(frame: CGRect) {
        super.init(frame: frame)
        cc_setUI()
        cc_setViewModel()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
extension CCCollectionViewCell : CCMVVMProtocol
{
    func cc_setUI(){}
    func cc_updataUI(){}
    func cc_setViewModel(){}
}
