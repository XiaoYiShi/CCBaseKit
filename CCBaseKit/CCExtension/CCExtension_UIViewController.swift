//
//  CCExtension_UIViewController.swift
//  CCBaseKit
//
//  Created by YiCZB on 2019/11/25.
//  Copyright © 2019 FeatherBrowser. All rights reserved.
//

import UIKit

extension UIViewController
{
    func cc_addBackBarButton() {
        let back = UIBarButtonItem.init(image: #imageLiteral(resourceName: "cartoon_navigation_back_black"), style: .plain, target: self, action: #selector(cc_backBarButtonClick))
        back.tintColor = UIColor.hex(rgb: 0x333333)
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


extension UIColor
{
    /// rgb颜色转换（16进制->10进制）
    ///
    /// - Parameter rgb: 16进制rgb
    /// - Returns: 颜色
    class func hex(rgb:UInt) -> UIColor {
        return UIColor.hex(rgb: rgb, a: 1)
    }
    class func hex(rgb:UInt,a:CGFloat) -> UIColor {
        return UIColor(
            red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgb & 0x0000FF) / 255.0,
            alpha: a
        )
    }
}
