//
//  Look.swift
//  Look
//
//  Created by wookyoung on 11/26/15.
//  Copyright © 2015 factorcat. All rights reserved.
//

public class Look : CustomDebugStringConvertible, CustomPlaygroundQuickLookable {
    var object: AnyObject? = nil
    var preview: PlaygroundQuickLook = .Text("nil")
    
    public func customPlaygroundQuickLook() -> PlaygroundQuickLook {
        return self.preview
    }
    
    public var debugDescription: String {
        if let obj = self.object {
            var targetStream  = String()
            dump(obj, &targetStream)
            return targetStream
        } else {
            return "nil"
        }
    }
    
    var def = LookDefault()
    
    struct LookDefault {
        var frame = CGRectMake(0, 0, 200, 100)
    }
}

