//
//  CCExtension_Timer.swift
//  CCBaseKit
//
//  Created by YiCZB on 2020/1/10.
//  Copyright © 2020 FeatherBrowser. All rights reserved.
//

import UIKit

extension Timer
{
    @objc private static func cc_ExecBlock(_ timer:Timer)
    {
        guard let block = timer.userInfo as? ((Timer)->Void) else {
            return
        }
        block(timer)
    }
    
    static func scheduledTimerWithTimeInterval(
        seconds:TimeInterval,
        //@escaping
        block:@escaping ((Timer)->Void),
        repeats:Bool
    ) -> Timer {
        return Timer.scheduledTimer(
            timeInterval: seconds,
            target: self,
            selector: #selector(cc_ExecBlock(_:)),
            userInfo: block,
            repeats: repeats
        )
    }
    
    static func timerWithTimeInterval(
        seconds:TimeInterval,
        block:@escaping ((Timer)->Void),
        repeats:Bool
    ) -> Timer {
        return Timer.init(
            timeInterval:
            seconds,
            target: self,
            selector: #selector(cc_ExecBlock(_:)),
            userInfo: block,
            repeats: repeats
        )
    }
}
