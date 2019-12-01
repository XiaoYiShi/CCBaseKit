//
//  CCExtension_String.swift
//  XcodeTest
//
//  Created by 史晓义 on 2019/9/5.
//  Copyright © 2019 XLTC. All rights reserved.
//

import UIKit

//MARK: - 简单数据类型扩展
//public extension CCKit_Wrapper where T == String
//{
//    //Bool
//    var boolValue: Bool {
//        return wrappedValue.cc.bool ?? false
//    }
//    var bool: Bool? {
//        switch wrappedValue {
//        case "true","TRUE","True","yes","YES","Yes":
//            return true
//        case "false","FALSE","False","no","NO","No":
//            return false
//        default:
//            return nil
//        }
//    }
//
//    //Int
//    var intValue : Int {
//        return Int(wrappedValue) ?? 0
//    }
//    var int : Int? {
//        return Int(wrappedValue)
//    }
//
//    //Float
//    var floatValue : Float {
//        return Float(wrappedValue) ?? 0
//    }
//    var float : Float? {
//        return Float(wrappedValue)
//    }
//
//    //Double
//    var doubleValue : Double {
//        return Double(wrappedValue) ?? 0
//    }
//    var double : Double? {
//        return Double(wrappedValue)
//    }
//
//    //CGFloat
//    var cgFloatValue : CGFloat {
//        return CGFloat(Float(wrappedValue) ?? 0)
//    }
//    var cgFloat: CGFloat? {
//        if let float = Float(wrappedValue) {
//            return CGFloat(float)
//        } else {
//            return nil
//        }
//    }
//
//    //NSInteger
//    var integerValue: NSInteger {
//        return NSInteger(Int(wrappedValue) ?? 0)
//    }
//    var integer: NSInteger? {
//        if let int = Int(wrappedValue) {
//            return NSInteger(int)
//        } else {
//            return nil
//        }
//    }
//
//    //NSNumber
//    var numberValue: NSNumber {
//        return wrappedValue.cc.number ?? NSNumber(0)
//    }
//    var number: NSNumber? {
//        let formatter = NumberFormatter.init()
//        if wrappedValue.contains(".") {
//            //小数形式（以国际化格式输出 保留三位小数,第四位小数四舍五入）
//            formatter.numberStyle = .decimal
//        } else {
//            //四舍五入的整数
//            formatter.numberStyle = .none
//        }
//        return formatter.number(from: wrappedValue)
//    }
//}

//MARK: - 集合数据类型扩展
//public extension CCKit_Wrapper where T == String
//{
//    //Array
////    var array: Array<String>? {
////        return []
////    }
////    //Dictionary
////    var dictionary: Dictionary<AnyHashable, Any>? {
////        return [:]
////    }
//}
//


//public extension CCKit_Wrapper where T == String
//{
    /// 以字符串为name读取mainBundle下的文件
//}

//MARK: - 值转换
public extension String
{
//    init(data : Data) {
////        self.init(rgb: rgb, a: 1)
//        self.init()
//    }
    /// data(using: .utf8)
    var cc_utf8Data: Data? {
        return self.data(using: .utf8)
    }
    
    var cc_color : UIColor {
        return UIColor.init(rgb: self)
    }
    /// 根据图片名初始化一张图片
    var cc_image : UIImage? {
        return UIImage.init(named: self)
    }
    
    /// 将文件读取成Data
//    var fileData: Data? {
//        return Data.cc_init(named: self)
//    }
    

}


extension String{
    struct FilterPicker{
        static let chinese = "[^\\u4e00-\\u9fa5]"
    }
    /// 过滤出符合条件的字符
    func filterPickCharactor(withRegex:String) -> String{
        var result = self
        do {
            let regex = try NSRegularExpression.init(pattern: withRegex, options: NSRegularExpression.Options.caseInsensitive)
            result = regex.stringByReplacingMatches(in: self, options: NSRegularExpression.MatchingOptions.reportCompletion, range: NSMakeRange(0, result.count), withTemplate: "")
        } catch  {
           CC_Log("过滤出错:\(error.localizedDescription)")
        }
        return result
    }
    
    //过滤字符
    //过滤emoji
    //过滤数字
    
    
}
// MARK: - 编解码
extension String {
    // URL Encode
    func LoginURLEncode() -> String {
        return self.addingPercentEncoding(withAllowedCharacters: CharacterSet(
            charactersIn: "!*'\"();:@&=+$,/?%#[]% <>{}|^~`").inverted ) ?? ""
    }
}
extension NSString {
//    func sha1() -> String {
//        let data = self.data(using: String.Encoding.utf8)!
//        var digest = [UInt8](repeating: 0, count:Int(CC_SHA1_DIGEST_LENGTH))
//        data.withUnsafeBytes {
//            _ = CC_SHA1($0, CC_LONG(data.count), &digest)
//        }
//        let hexBytes = digest.map { String(format: "%02hhx", $0) }
//        return hexBytes.joined()
//    }
}
//MARK: - 字符校验
extension String
{
    enum ValidateType {
        case email
        case phoneNum
        case carNum
        case username
        case password
        case nickname
        case URL
        case IP
        case number
    }
    //字符串判断
    func validate(_ type : String.ValidateType) -> Bool {
        var predicateStr:String!
        switch type {
        case .email:
            predicateStr = "^([a-z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$"
        case .phoneNum:
            predicateStr = "^1[3|4|5|7|8][0-9]{9}$"
        case .carNum:
            predicateStr = "^[A-Za-z]{1}[A-Za-z_0-9]{5}$"
        case .username:
            predicateStr = "^[A-Za-z0-9]{6,20}+$"
        case .password:
            predicateStr = "^[a-zA-Z0-9]{6,20}+$"
        case .nickname:
            predicateStr = "^[\\u4e00-\\u9fa5]{4,8}$"
        case .URL:
            predicateStr = "^(https?:\\/\\/)?([\\da-z\\.-]+)\\.([a-z\\.]{2,6})([\\/\\w \\.-]*)*\\/?$"
        case .IP:
            predicateStr = "^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$"
        case .number:
            predicateStr = "^[0-9]*$"
        }
        
        let predicate =  NSPredicate(format: "SELF MATCHES %@" ,predicateStr)
        return predicate.evaluate(with: self)
    }
}
