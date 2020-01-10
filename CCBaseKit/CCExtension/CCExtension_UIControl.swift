//
//  CCExtension_UIControl.swift
//  CCBaseKit
//
//  Created by YiCZB on 2020/1/10.
//  Copyright © 2020 FeatherBrowser. All rights reserved.
//

import UIKit


extension UIControl
{
    public func removeAllTargets()
    {
        for obj in allTargets {
            removeTarget(obj, action: nil, for: UIControl.Event.allEvents)
        }
        cc_allUIControlBlockTargets.removeAll()
    }
    public func set(target:Any,action:Selector,for events:UIControl.Event)
    {
        let targets = allTargets
        for currentTarget in targets {
            if let actions = self.actions(forTarget: currentTarget, forControlEvent: events)
            {
                for currentAction in actions {
                    removeTarget(currentTarget, action: NSSelectorFromString(currentAction), for: events)
                }
            }
        }
        addTarget(target, action: action, for: events)
    }
    
    //mark: 添加block
    public func setBlock(for events:UIControl.Event, _ block:@escaping ((Any)->Void))
    {
        removeAllBlocks(for: UIControl.Event.allEvents)
        addBlock(for: events, block)
    }

    public func removeAllBlocks(for events:UIControl.Event)
    {
        var removes = [CC_UIControlBlockTarget]()
        for target in cc_allUIControlBlockTargets
        {
            let newEvent = target.events.union(UIControl.Event.allEvents.subtracting(events))
            if !newEvent.isEmpty
            {
                removeTarget(target, action: #selector(CC_UIControlBlockTarget.invoke(_:)), for: target.events)
                target.events = newEvent
                addTarget(target, action: #selector(CC_UIControlBlockTarget.invoke(_:)), for: target.events)
            } else {
                removeTarget(target, action: #selector(CC_UIControlBlockTarget.invoke(_:)), for: target.events)
                removes.append(target)
            }
        }
        cc_allUIControlBlockTargets.removeObjects(in: removes)
    }
    
    //扩展事件
    public func addBlock(for events:UIControl.Event, _ block:@escaping ((Any)->Void))
    {
        let target = CC_UIControlBlockTarget(block: block, events: events)
        addTarget(target, action: #selector(CC_UIControlBlockTarget.invoke(_:)), for: events)
        cc_allUIControlBlockTargets.append(target)
    }
    
    //mark: 存储事件模型的数组
    private var cc_allUIControlBlockTargets : [CC_UIControlBlockTarget]
    {
        get {
            return (objc_getAssociatedObject(self, &UIControl.block_key) as? [UIControl.CC_UIControlBlockTarget]) ?? []
        }
        set {
            objc_setAssociatedObject(self, &UIControl.block_key, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    private static var block_key = 0
    private class CC_UIControlBlockTarget: NSObject
    {
        var block: ((Any)->Void)
        var events: UIControl.Event = []
        init(block: @escaping ((Any)->Void),events: UIControl.Event) {
            self.block = block
            self.events = events
            super.init()
        }
        @objc func invoke(_ sender:Any) {
            block(sender)
        }
    }
}
 
