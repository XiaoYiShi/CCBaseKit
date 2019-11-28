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
public extension Array
{
    /// 数组中第2个元素
    var second: Element? {
        if self.count > 1 {
            return self[1]
        }
        return nil
    }
    /// 数组中第3个元素
    var third: Element? {
        if self.count > 2 {
            return self[2]
        }
        return nil
    }
    /// 数组中第4个元素
    var fourth: Element? {
        if self.count > 3 {
            return self[3]
        }
        return nil
    }
    /// 数组中第5个元素
    var fifth: Element? {
        if self.count > 4 {
            return self[4]
        }
        return nil
    }
    /// 数组中第6个元素
    var sixth: Element? {
        if self.count > 5 {
            return self[5]
        }
        return nil
    }
    /// 数组中第7个元素
    var seventh: Element? {
        if self.count > 6 {
            return self[6]
        }
        return nil
    }
    /// 数组中第8个元素
    var eighth: Element? {
        if self.count > 7 {
            return self[7]
        }
        return nil
    }
    /// 数组中第9个元素
    var ninth: Element? {
        if self.count > 8 {
            return self[8]
        }
        return nil
    }
    /// 数组中第10个元素
    var tenth: Element? {
        if self.count > 9 {
            return self[9]
        }
        return nil
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
