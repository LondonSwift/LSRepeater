//
//  LSRepeater.swift
//  LSRepeater
//
//  Created by Daren David Taylor on 27/09/2015.
//  Copyright © 2015 LondonSwift. All rights reserved.
//

import Foundation

public typealias LSRepeatClosure = () -> Void

// we need to subclass NSObject, as NSTimer uses the runtime for method invocation
open class LSRepeater: NSObject {
    
    var timer:Timer!
    var execute:LSRepeatClosure!
    
    
    open class func repeater(_ interval:TimeInterval, fireOnceInstantly:Bool, execute: @escaping LSRepeatClosure) -> LSRepeater {
        
        let repeater = LSRepeater()
        repeater.execute = execute
        
        repeater.timer = Timer.scheduledTimer(timeInterval: interval, target:repeater, selector: #selector(LSRepeater.timerDidFire), userInfo: nil, repeats: true)
        
        if fireOnceInstantly {
            repeater.timerDidFire()
        }
        
        return repeater
    }
    
    open class func repeater(_ interval:TimeInterval, execute: @escaping LSRepeatClosure) -> LSRepeater {
        return self.repeater(interval, fireOnceInstantly: true, execute: execute)
    }
    
    open func invalidate()
    {
        self.timer.invalidate()
    }
    
    func timerDidFire() {
        self.execute()
    }
    
}
