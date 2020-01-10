//
//  CCExtension_Array.swift
//  XcodeTest
//
//  Created by 史晓义 on 2019/9/6.
//  Copyright © 2019 XLTC. All rights reserved.
//

import UIKit


//MARK: - 获取数组元素
/// 便捷获取数组元素
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
    
    /// 数组中第11个元素
    var eleventh: Element? {
        if self.count > 10 {
            return self[10]
        }
        return nil
    }
    /// 数组中第12个元素
    var twelfth: Element? {
        if self.count > 11 {
            return self[11]
        }
        return nil
    }
    /// 数组中第13个元素
    var thirteenth: Element? {
        if self.count > 12 {
            return self[12]
        }
        return nil
    }
    /// 数组中第14个元素
    var fourteenth: Element? {
        if self.count > 13 {
            return self[13]
        }
        return nil
    }
    /// 数组中第15个元素
    var fifteenth: Element? {
        if self.count > 14 {
            return self[14]
        }
        return nil
    }
    /// 数组中第16个元素
    var sixteenth: Element? {
        if self.count > 15 {
            return self[15]
        }
        return nil
    }
    /// 数组中第17个元素
    var seventeenth: Element? {
        if self.count > 16 {
            return self[16]
        }
        return nil
    }
    /// 数组中第18个元素
    var eighteenth: Element? {
        if self.count > 17 {
            return self[17]
        }
        return nil
    }
    /// 数组中第19个元素
    var nineteenth: Element? {
        if self.count > 18 {
            return self[18]
        }
        return nil
    }
    /// 数组中第20个元素
    var twentieth: Element? {
        if self.count > 19 {
            return self[19]
        }
        return nil
    }
}




//MARK: - 数组转换，Element == String
/// 便捷获取数组元素
public extension Array where Element == String
{
    /// 转换成","分割的字符串
    var cc_string: String {
        return self.joined(separator: ",")
    }
}

/// 增删改查
public extension Array where Element : NSObject
{
    mutating func remove(object: Element) {
        //确认包含对象再去重
        if contains(object) {
            //第一次去重
            for (index,object1) in self.enumerated() {
                if object == object1 {
                    self.remove(at: index)
                    break
                }
            }
            //如果还包含有，再递归一次去重
            if contains(object) {
                remove(object: object)
            }
        }
    }
    mutating func removeObjects(in array:[Element]) {
        for object in array {
            self.remove(object: object)
        }
    }
}


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
