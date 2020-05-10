//
//  Bool+RSJ.swift
//  RSJ
//
//  Created by Rael San Juan on 5/10/20.
//  Copyright © 2020 Rael San Juan. All rights reserved.
//

import Foundation

/**
 A DSL for Bool to access custom methods
 */
public struct RSJBoolDSL {

    // MARK: Stored Propeties
    /**
     Underlying Bool instance
     */
    public let bool: Bool

}

public extension RSJBoolDSL {

    /**
     Bool is true
     */
    var isTrue: Bool {
        return self.bool == true
    }

    /**
     Bool is false
     */
    var isFalse: Bool {
        return self.bool == false
    }
}

public extension Bool {

    /**
     KioIntDSL instance to access custom methods
     */
    var rsj: RSJBoolDSL {
        return RSJBoolDSL(bool: self)
    }
}
