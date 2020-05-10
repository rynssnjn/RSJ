//
//  RSJView.swift
//  RSJ
//
//  Created by Rael San Juan on 5/10/20.
//  Copyright © 2020 Rael San Juan. All rights reserved.
//

import class UIKit.UIView

/**
 A subclass of UIView that implements a print statement when deinitialized
*/
open class RSJView: UIView, RSJDebuggable {
    deinit {
        self.logMessage()
    }
}

public extension RSJDebuggable where Self: UIView {

    func logMessage() {
        print("\(type(of: self)) deallocated")
    }

}
