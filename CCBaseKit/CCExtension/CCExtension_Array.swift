//
//  CCExtension_Array.swift
//  XcodeTest
//
//  Created by 史晓义 on 2019/9/6.
//  Copyright © 2019 XLTC. All rights reserved.
//

import UIKit

public extension Array where Element == String
{
    /// 转换成","分割的字符串
    var cc_string: String {
        return self.joined(separator: ",")
    }
}


//public extension Dictionary<Key, Value> where Key : String
//{
//    var cc_urlParameterString : String
//    {
//        return self.compactMap{"\($0)=\($1)"}.joined(separator: "&")
//    }
//}


//
//public extension Array
//{
//    /// 切牌，从0到n切到末尾，只循环切换首尾，前后相邻顺序不变，O(n^2)
//    /// - Parameter cutIndex: 第0到cutIndex个，切到后方
//    @inlinable mutating func cutTopToLast(in cutIndex:Int)
//    {
//        if self.count <= 0
//            || cutIndex == 0
//        {
//            return
//        }
//        for _ in 0...cutIndex {
//            self.append(self.first!)
//            self.removeFirst()
//        }
//    }
//}
