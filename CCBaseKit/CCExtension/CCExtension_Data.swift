//
//  CCExtension_Data.swift
//  XcodeTest
//
//  Created by 史晓义 on 2019/9/6.
//  Copyright © 2019 XLTC. All rights reserved.
//

import UIKit

//MARK: - 快速初始化扩展
public extension Data
{
    
    /// 根据文件名获取main Bundle 下的文件Data
    ///
    /// - Parameter name: 文件名
    /// - Returns: 文件二进制流
//    static func cc_init(named name:String) -> Data?
//    {
//        if let path = Bundle.main.path(forResource: name, ofType: "")
//        {
//            return NSData.init(contentsOfFile: path) as Data?
//        }
//        return nil
//    }
    
}

//MARK: - 值转换
public extension Data
{
    /// utf8String
    public var cc_utf8String: String {
        if self.count > 0 {
            return String.init(data: self, encoding: String.Encoding.utf8) ?? ""
        }
        return ""
    }
    
    /// image
    var cc_image: UIImage? {
        return UIImage.init(data: self)
    }
    
}


//MARK: - 加密
public extension Data
{
    
//    - (NSString *)md2String {
//    unsigned char result[CC_MD2_DIGEST_LENGTH];
//    CC_MD2(self.bytes, (CC_LONG)self.length, result);
//    return [NSString stringWithFormat:
//    @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
//    result[0], result[1], result[2], result[3],
//    result[4], result[5], result[6], result[7],
//    result[8], result[9], result[10], result[11],
//    result[12], result[13], result[14], result[15]
//    ];
//    }
//
//    - (NSData *)md2Data {
//    unsigned char result[CC_MD2_DIGEST_LENGTH];
//    CC_MD2(self.bytes, (CC_LONG)self.length, result);
//    return [NSData dataWithBytes:result length:CC_MD2_DIGEST_LENGTH];
//    }
//
//    - (NSString *)md4String {
//    unsigned char result[CC_MD4_DIGEST_LENGTH];
//    CC_MD4(self.bytes, (CC_LONG)self.length, result);
//    return [NSString stringWithFormat:
//    @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
//    result[0], result[1], result[2], result[3],
//    result[4], result[5], result[6], result[7],
//    result[8], result[9], result[10], result[11],
//    result[12], result[13], result[14], result[15]
//    ];
//    }
//
//    - (NSData *)md4Data {
//    unsigned char result[CC_MD4_DIGEST_LENGTH];
//    CC_MD4(self.bytes, (CC_LONG)self.length, result);
//    return [NSData dataWithBytes:result length:CC_MD4_DIGEST_LENGTH];
//    }
//
//    - (NSString *)md5String {
//    unsigned char result[CC_MD5_DIGEST_LENGTH];
//    CC_MD5(self.bytes, (CC_LONG)self.length, result);
//    return [NSString stringWithFormat:
//    @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
//    result[0], result[1], result[2], result[3],
//    result[4], result[5], result[6], result[7],
//    result[8], result[9], result[10], result[11],
//    result[12], result[13], result[14], result[15]
//    ];
//    }
//
//    - (NSData *)md5Data {
//    unsigned char result[CC_MD5_DIGEST_LENGTH];
//    CC_MD5(self.bytes, (CC_LONG)self.length, result);
//    return [NSData dataWithBytes:result length:CC_MD5_DIGEST_LENGTH];
//    }

}
