//
//  CCExtension_Dictionary.swift
//  CCBaseKit
//
//  Created by YiCZB on 2019/11/29.
//  Copyright © 2019 FeatherBrowser. All rights reserved.
//

import UIKit

/// 键值管理
extension Dictionary where Key == String, Value : Any {
    mutating func set(_ object:Value?, for key:String) {
        self["key"] = object
    }
    func object(for key:String) -> Value? {
        return self[key]
    }
    func string(for key:String) -> String? {
        if let value = self[key]
        {
            return value as? String
        } else {
            return nil
        }
    }
    func diconary(for key:String) -> [String:Any]? {
        if let value = self[key]
        {
            return value as? [String:Any]
        } else {
            return nil
        }
    }
    func array(for key:String) -> [Any]? {
        if let value = self[key]
        {
            return value as? [Any]
        } else {
            return nil
        }
    }
    func number(for key:String) -> NSNumber? {
        if let value = self[key]
        {
            return value as? NSNumber
        } else {
            return nil
        }
    }
    func bool(for key:String) -> Bool? {
        if let value = self[key]
        {
            return value as? Bool
        } else {
            return nil
        }
    }
    func int(for key:String) -> Int? {
        if let value = self[key]
        {
            return value as? Int
        } else {
            return nil
        }
    }
    func float(for key:String) -> Float? {
        if let value = self[key]
        {
            return value as? Float
        } else {
            return nil
        }
    }
    func double(for key:String) -> Double? {
        if let value = self[key]
        {
            return value as? Double
        } else {
            return nil
        }
    }
    
}

//public extension Dictionary<Key, Value> where Key : String
//{
//    var cc_urlParameterString : String
//    {
//        return self.compactMap{"\($0)=\($1)"}.joined(separator: "&")
//    }
//}



