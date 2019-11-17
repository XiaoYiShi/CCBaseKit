////
////  CCExtension_UIImage.swift
////  XcodeTest
////
////  Created by 史晓义 on 2019/9/5.
////  Copyright © 2019 XLTC. All rights reserved.
////
//
//import UIKit
//
////MARK: - 快速初始化扩展
//public extension UIImage
//{
//    
//    /// 用UIView生成一张图片
//    ///
//    /// - Parameter view: 要转的view
//    /// - Returns: UIImage
//    public static func cc_init(view:UIView) -> UIImage?
//    {
//        let s = view.bounds.size
//        // 下面方法，第一个参数表示区域大小。第二个参数表示是否是非透明的。如果需要显示半透明效果，需要传NO，否则传YES。第三个参数就是屏幕密度了
//        UIGraphicsBeginImageContextWithOptions(s, false, UIScreen.main.scale)
//        view.layer.render(in: UIGraphicsGetCurrentContext()!)
//        let image = UIGraphicsGetImageFromCurrentImageContext()
//        UIGraphicsEndImageContext()
//        return image
//    }
//}
//
////MARK: - 快速类型转换
//public extension UIImage
//{
//    /// 图片转成Data
//    public var cc_data: Data? {
//        var data : Data?
//        data = self.pngData()
//        if (data == nil) {
//            data = self.jpegData(compressionQuality: 1.0)
//        }
//        return data
//    }
//}
//
//extension UIImage
//{
//    
////    class func circleImage(_ image: UIImage) -> UIImage? {
////        let imgRect: CGRect = CGRect(x: 0, y: 0, width: image.size.width, height: image.size.height)
////        UIGraphicsBeginImageContextWithOptions(imgRect.size, false, 0.0)
////        let bitmap = UIGraphicsGetCurrentContext()
////        bitmap?.addEllipse(in: imgRect)
////        bitmap?.clip()
////
////        image.draw(in: imgRect)
////        let resultImg: UIImage? = UIGraphicsGetImageFromCurrentImageContext()
////        UIGraphicsEndImageContext()
////
////        return resultImg
////    }
////
////    class func circleImage(_ image: UIImage, borderColor: UIColor, borderWidth:CGFloat) -> UIImage? {
////        let imgRect: CGRect = CGRect(x: 0, y: 0, width: image.size.width, height: image.size.height)
////        UIGraphicsBeginImageContextWithOptions(imgRect.size, false, 0.0)
////        let bitmap = UIGraphicsGetCurrentContext()
////        bitmap?.addEllipse(in: imgRect)
////        bitmap?.clip()
////
////        image.draw(in: imgRect)
////        bitmap?.setLineWidth(borderWidth)
////        borderColor.set()
////        bitmap?.addEllipse(in: imgRect)
////        bitmap?.strokePath()
////        let resultImg: UIImage? = UIGraphicsGetImageFromCurrentImageContext()
////        UIGraphicsEndImageContext()
////
////        return resultImg
////    }
//    
//    /// 可以将纯色的图片改为传入颜色的图片
//    ///
//    /// - Parameter tintColor: 目标颜色
//    /// - Returns: UIImage
//    func cc_gradient(in tintColor: UIColor) -> UIImage {
//        UIGraphicsBeginImageContextWithOptions(self.size, false, 0.0)
//        tintColor.setFill()
//        let bounds = CGRect(x: 0, y: 0, width: self.size.width, height: self.size.height)
//        UIRectFill(bounds)
//        
//        //Draw the tinted image in context
//        self.draw(in: bounds, blendMode: CGBlendMode.overlay, alpha: 1.0)
//        self.draw(in: bounds, blendMode: CGBlendMode.destinationIn, alpha: 1.0)
//        
//        if let tintedImage = UIGraphicsGetImageFromCurrentImageContext() {
//            UIGraphicsEndImageContext()
//            return tintedImage
//        }
//        UIGraphicsEndImageContext()
//        return self
//    }
//    
//    /// 将图片裁剪成正方形
//    ///
//    /// - Returns: 正方形图片，取最中间的一块
//    func cc_catToSquare() -> UIImage {
//        let wid = self.size.width < self.size.height ? self.size.width : self.size.height
//        var x : CGFloat = 0, y : CGFloat = 0
//        if self.size.width < self.size.height {
//            x = 0
//            y = (self.size.height - self.size.width)/2
//        } else {
//            x = (self.size.width - self.size.height)/2
//            y = 0
//        }
//        let rect = CGRect.init(x: x, y: y, width: wid, height: wid)
//        //将UIImage转换成CGImageRef
//        let sourceImageRef : CGImage = self.cgImage!
//        //按照给定的矩形区域进行剪裁
//        let newImageRef = sourceImageRef.cropping(to: rect)
//        //将CGImageRef转换成UIImage
//        return UIImage.init(cgImage: newImageRef!)
//    }
//    @objc func toData() -> Data {
//        var data : Data?
//        
//        if (self.pngData() == nil) {
//            data = self.jpegData(compressionQuality: 1.0)
//        } else {
//            data = self.pngData()
//        }
//        return data ?? Data()
//    }
//    
//}
//// MARK: - 滤镜
//extension UIImage {
//    //棕褐色复古滤镜（老照片效果）
//    func sepiaTone() -> UIImage?
//    {
//        let imageData = self.pngData()
//        let inputImage = CoreImage.CIImage(data: imageData!)
//        let context = CIContext(options:nil)
//        let filter = CIFilter(name:"CISepiaTone")
//        filter!.setValue(inputImage, forKey: kCIInputImageKey)
//        filter!.setValue(0.8, forKey: "inputIntensity")
//        if let outputImage = filter!.outputImage {
//            let outImage = context.createCGImage(outputImage, from: outputImage.extent)
//            return UIImage(cgImage: outImage!)
//        }
//        return nil
//    }
//    //黑白效果滤镜
//    func noir() -> UIImage?
//    {
//        let imageData = self.pngData()
//        let inputImage = CoreImage.CIImage(data: imageData!)
//        let context = CIContext(options:nil)
//        let filter = CIFilter(name:"CIPhotoEffectNoir")
//        filter!.setValue(inputImage, forKey: kCIInputImageKey)
//        if let outputImage = filter!.outputImage {
//            let outImage = context.createCGImage(outputImage, from: outputImage.extent)
//            return UIImage(cgImage: outImage!)
//        }
//        return nil
//    }
//    //UIColor 转UIImage
//    class func `init`(color:UIColor) -> UIImage? {
//        let rect = CGRect.init(x: 0, y: 0, width: 1, height: 1)
//        UIGraphicsBeginImageContext(rect.size)
//        let context = UIGraphicsGetCurrentContext()
//        context?.setFillColor(color.cgColor)
//        context?.fill(rect)
//        let theImage = UIGraphicsGetImageFromCurrentImageContext()
//        UIGraphicsEndImageContext()
//        return theImage
//    }
//}
//// MARK: - 图片头部朝向
//extension UIImage
//{
//    //图片方向处理，头向上
//    class func fixOrientation(_ aImage:UIImage) -> UIImage
//    {
//        // No-op if the orientation is already correct
//        if aImage.imageOrientation == .up {
//            return aImage
//        }
//        
//        // We need to calculate the proper transformation to make the image upright.
//        // We do it in 2 steps: Rotate if Left/Right/Down, and then flip if Mirrored.
//        var transform = CGAffineTransform.identity
//        
//        switch aImage.imageOrientation {
//        case .down, .downMirrored:
//            transform = transform.translatedBy(x: aImage.size.width, y: aImage.size.height)
//            transform = transform.rotated(by: CGFloat.pi)
//            break
//            
//        case .left, .leftMirrored:
//            transform = transform.translatedBy(x: aImage.size.width, y: 0)
//            transform = transform.rotated(by: CGFloat.pi)
//            break
//            
//        case .right, .rightMirrored:
//            transform = transform.translatedBy(x: 0, y: aImage.size.height)
//            transform.rotated(by: -CGFloat.pi/2)
//            break
//            
//        default:
//            break
//        }
//        
//        switch aImage.imageOrientation {
//        case .upMirrored, .downMirrored:
//            transform = transform.translatedBy(x: aImage.size.width, y: 0)
//            transform = transform.scaledBy(x: -1, y: 1)
//            break
//            
//        case .leftMirrored, .rightMirrored:
//            transform = transform.translatedBy(x: aImage.size.height, y: 0)
//            transform = transform.scaledBy(x: -1, y: 1)
//            break
//            
//        default:
//            break
//        }
//        
//        
//        // Now we draw the underlying CGImage into a new context, applying the transform
//        // calculated above.
//        let ctx:CGContext = CGContext.init(data: nil,
//                                           width: Int(aImage.size.width),
//                                           height: Int(aImage.size.height),
//                                           bitsPerComponent: aImage.cgImage?.bitsPerComponent ?? 0,
//                                           bytesPerRow: 0,
//                                           space: (aImage.cgImage?.colorSpace)!,
//                                           bitmapInfo: (aImage.cgImage?.bitmapInfo.rawValue)!
//            )!
//        ctx.concatenate(transform)
//        
//        switch aImage.imageOrientation {
//        case .left, .leftMirrored, .right, .rightMirrored:
//            // Grr...
//            ctx.draw(aImage.cgImage!, in: CGRect.init(x: 0, y: 0, width: aImage.size.height,
//                                                      height: aImage.size.width))
//            break
//        default:
//            ctx.draw(aImage.cgImage!, in: CGRect.init(x: 0, y: 0, width: aImage.size.width,
//                                                      height: aImage.size.height))
//            break
//        }
//        // And now we just create a new UIImage from the drawing context
//        let cgimg = ctx.makeImage()
//        let img = UIImage.init(cgImage: cgimg!)
//        return img
//    }
//}
//// MARK: - 修改尺寸
//extension UIImage
//{
//    /// 修改图片size
//    ///
//    /// - Parameter targetSize: 要修改的size
//    /// - Returns: 修改后的图片
//    func scalingToSize(_ targetSize:CGSize) -> UIImage? {
//        let sourceImage = self
//        UIGraphicsBeginImageContext(targetSize)
//        var thumbnailRect = CGRect.zero
//        thumbnailRect.origin = CGPoint.zero
//        thumbnailRect.size.width    = targetSize.width
//        thumbnailRect.size.height   = targetSize.height
//        sourceImage.draw(in: thumbnailRect)
//        let newImage = UIGraphicsGetImageFromCurrentImageContext()
//        UIGraphicsEndImageContext()
//        return newImage
//    }
//}
//
//extension UIImage {
//    public convenience init?(color: UIColor, size: CGSize = CGSize(width: 1, height: 1)) {
//        let rect = CGRect(origin: .zero, size: size)
//        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
//        color.setFill()
//        UIRectFill(rect)
//        let image = UIGraphicsGetImageFromCurrentImageContext()
//        UIGraphicsEndImageContext()
//        guard let cgImage = image?.cgImage else { return nil }
//        self.init(cgImage: cgImage)
//    }
//    
//    
//    // 图片转换成png格式
//    @objc func toPng() -> UIImage? {
//        // 我们需要将其转换成NSdata二进制存储，
//        var data : NSData?
//        if (self.pngData() == nil) {
//            data = self.jpegData(compressionQuality: 1) as NSData?
//        } else {
//            data = self.pngData()! as NSData
//        }
//        //文件路径
//        let path = NSHomeDirectory().appending("/tmp/image.png")
//        //        print(path)
//        FileManager.default.createFile(atPath: path, contents: data as Data?, attributes: nil) // 将图片保存为PNG格式
//        data?.write(toFile: path, atomically: true)
//        return UIImage.init(contentsOfFile: path)
//    }
//    
//    //图片转换成jpg格式
//    func toJpg() -> UIImage? {
//        //我们需要将其转换成NSdata二进制存储，
//        var data : NSData?
//        if (self.pngData() == nil) {
//            data = self.jpegData(compressionQuality: 1) as NSData?
//        } else {
//            data = self.pngData()! as NSData
//        }
//        //文件路径
//        let path = NSHomeDirectory().appending("/tmp/image.jpg")
//        FileManager.default.createFile(atPath: path, contents: data as Data?, attributes: nil) // 将图片保存为JPG格式
//        data?.write(toFile: path, atomically: true)
//        return UIImage.init(contentsOfFile: path)
//    }
//    
//    
//}
//
//
//
