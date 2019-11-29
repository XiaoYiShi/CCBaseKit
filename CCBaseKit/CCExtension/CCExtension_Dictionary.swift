//
//  CCExtension_Dictionary.swift
//  CCBaseKit
//
//  Created by YiCZB on 2019/11/29.
//  Copyright © 2019 FeatherBrowser. All rights reserved.
//

import UIKit

public extension Dictionary<Key, Value> where Key : String
{
    mutating func set(_ object:Any, for key:String) {
        self["key"] = object
    }
    func object(for key:String) -> Any {
        
    }
    
}
//public extension Dictionary<Key, Value> where Key : String
//{
//    var cc_urlParameterString : String
//    {
//        return self.compactMap{"\($0)=\($1)"}.joined(separator: "&")
//    }
//}



