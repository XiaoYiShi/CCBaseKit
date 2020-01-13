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


// Provide some some common method for Array.
public extension Array
{
//
//    /**
//     Creates and returns an array from a specified property list data.
//
//     @param plist   A property list data whose root object is an array.
//     @return A new array created from the binary plist data, or nil if an error occurs.
//     */
//    static func arrayWithPlistData(_ plist:Data) -> [Element]?
//    {
//
//        NSArray *array = [NSPropertyListSerialization propertyListWithData:plist options:NSPropertyListImmutable format:NULL error:NULL];
//        if ([array is :[NSArray class]]) return array;
//        return nil;
//    }
//
//    /**
//     Creates and returns an array from a specified property list xml string.
//
//     @param plist   A property list xml string whose root object is an array.
//     @return A new array created from the plist string, or nil if an error occurs.
//     */
//    static func arrayWithPlistString(_ plist:String) -> [Element]?
//    {
//        guard let data = plist.data(using: String.Encoding.utf8) else {
//            return nil
//        }
//        return arrayWithPlistData(data)
//    }
//
//    /**
//     Serialize the array to a binary property list data.
//
//     @return A binary plist data, or nil if an error occurs.
//     */
//    var plistData: Data {
//        return [NSPropertyListSerialization dataWithPropertyList:self format:NSPropertyListBinaryFormat_v1_0 options:kNilOptions error:NULL];
//    }
//
//
//    /**
//     Serialize the array to a xml property list string.
//
//     @return A plist xml string, or nil if an error occurs.
//     */
//    var plistString: String {
//        NSData *xmlData = [NSPropertyListSerialization dataWithPropertyList:self format:NSPropertyListXMLFormat_v1_0 options:kNilOptions error:NULL];
//        if (xmlData) return xmlData.utf8String;
//        return nil;
//    }
//
    /**
     Returns the object located at a random index.

     @return The object in the array with a random index value.
     If the array is empty, returns nil.
     */
    var randomObject: Element? {
        if self.count > 0 {
            return self[Int(arc4random_uniform(UInt32(self.count)))]
        }
        return nil
    }
    
    /**
     Returns the object located at index, or return nil when out of bounds.
     It's similar to `objectAtIndex:`, but it never throw exception.

     @param index The object located at index.
     */
    func objectOrNil(at index:Int) -> Element? {
        return index < self.count ? self[index] : nil
    }
    
    /**
     Convert object to json string. return nil if an error occurs.
     NSString/NSNumber/NSDictionary/NSArray
     */
    var jsonStringEncoded: String?
    {
        if JSONSerialization.isValidJSONObject(self) {
            do {
                let jsonData = try JSONSerialization.data(withJSONObject: self, options: JSONSerialization.WritingOptions.init(rawValue: 0))
                return String.init(data: jsonData, encoding: String.Encoding.utf8)
            } catch {
            }
        }
        return nil
    }
    
    /**
     Convert object to json string formatted. return nil if an error occurs.
     */
    var jsonPrettyStringEncoded: String?
    {
        if JSONSerialization.isValidJSONObject(self) {
            do {
                let jsonData = try JSONSerialization.data(withJSONObject: self, options: JSONSerialization.WritingOptions.prettyPrinted)
                return String.init(data: jsonData, encoding: String.Encoding.utf8)
            } catch {
            }
        }
        return nil
    }
}


// Provide some some common method for mutating func.
extension Array
{
    /**
     Inserts a given object at the end of the array.

     @param anObject The object to add to the end of the array's content.
     This value must not be nil. Raises an NSInvalidArgumentException if anObject is nil.
     */
    mutating func addObject(_ anObject:Element) {
        append(anObject)
    }
    
    /**
     Inserts a given object at the beginning of the array.

     @param anObject The object to add to the end of the array's content.
     This value must not be nil. Raises an NSInvalidArgumentException if anObject is nil.
     */
    mutating func prependObject(_ anObject:Element) {
        insert(anObject, at: 0)
    }
    
    /**
     Adds the objects contained in another given array to the end of the receiving
     array's content.

     @param objects An array of objects to add to the end of the receiving array's
     content. If the objects is empty or nil, this method has no effect.
     */
    mutating func addObjectsFromArray(_ objects:[Element]?) {
        append(contentsOf: objects ?? [])
    }
    
//    /**
//     Adds the objects contained in another given array to the beginnin of the receiving
//     array's content.
//
//     @param objects An array of objects to add to the beginning of the receiving array's
//     content. If the objects is empty or nil, this method has no effect.
//     */
//    - (void)prependObjects:(NSArray *)objects {
//        if (!objects) return;
//        NSUInteger i = 0;
//        for (id obj in objects) {
//            [self insertObject:obj atIndex:i++];
//        }
//    }
//
//    /**
//     Adds the objects contained in another given array at the index of the receiving
//     array's content.
//
//     @param objects An array of objects to add to the receiving array's
//     content. If the objects is empty or nil, this method has no effect.
//
//     @param index The index in the array at which to insert objects. This value must
//     not be greater than the count of elements in the array. Raises an
//     NSRangeException if index is greater than the number of elements in the array.
//     */
//    - (void)insertObjects:(NSArray *)objects atIndex:(NSUInteger)index {
//        NSUInteger i = index;
//        for (id obj in objects) {
//            [self insertObject:obj atIndex:i++];
//        }
//    }
}
