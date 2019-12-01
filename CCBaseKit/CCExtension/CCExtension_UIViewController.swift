//
//  CCExtension_UIViewController.swift
//  CCBaseKit
//
//  Created by YiCZB on 2019/11/25.
//  Copyright © 2019 FeatherBrowser. All rights reserved.
//

import UIKit

public extension UIViewController
{
    func cc_addBackBarButton() {
        let back = UIBarButtonItem.init(image: #imageLiteral(resourceName: "cartoon_navigation_back_black"), style: .plain, target: self, action: #selector(cc_backBarButtonClick))
        back.tintColor = UIColor.init(rgb: 0x333333)
        self.navigationItem.leftBarButtonItem = back
    }
    @objc func cc_backBarButtonClick() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func cc_alert(_ title:String?,_ message:String?) {
        DispatchQueue.main.async {
            let alert = UIAlertController.init(title: title, message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction.init(title: "我知道了", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    func cc_alert(_ title:String?,_ message:String?, handler:@escaping ()->Void)
    {
        DispatchQueue.main.async {
            let alert = UIAlertController.init(title: title, message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction.init(title: "我知道了", style: .cancel, handler: { (_) in
                handler()
            }))
            self.present(alert, animated: true, completion: nil)
        }
    }
}


public extension UIViewController {
    
    
    var cc_navC : UINavigationController? {
        return self.navigationController
    }
    
    
}

public extension NSObject {

    /// 获取顶层的viewControler
    ///
    /// - Returns: 顶层vc
    func getTopVC() -> UIViewController {
        let rootVC = UIApplication.shared.keyWindow?.rootViewController
        let currentVC = self.getCurrentViewConroller(from: rootVC!)
        return currentVC
    }

    /// 循环找到最顶部的viewController
    ///
    /// - Parameter from: 需要寻找这个vc是否是最上层的
    /// - Returns: 返回最顶层的vc
    fileprivate func getCurrentViewConroller(from:UIViewController) -> UIViewController {

        var currentVC = from

        if (from.presentedViewController != nil) {
            currentVC = from.presentedViewController!
        }

        if let tab = currentVC as? UITabBarController {
            currentVC = self.getCurrentViewConroller(from:tab.selectedViewController!)
        }
        if let nav = currentVC as? UINavigationController {
            currentVC = self.getCurrentViewConroller(from: nav.visibleViewController!)
        }

        return currentVC

    }
}


