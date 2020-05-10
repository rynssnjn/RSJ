//
//  UIView+RSJ.swift
//  RSJ
//
//  Created by Rael San Juan on 5/10/20.
//  Copyright © 2020 Rael San Juan. All rights reserved.
//

import class UIKit.UIView
import struct CoreGraphics.CGFloat

/**
 A DSL for UIView to access custom methods
*/
public struct RSJViewDSL {

    // MARK: Stored Propeties
    /**
     Underlying UIView instance
    */
    public let view: UIView

}

public extension RSJViewDSL {

    /**
     Adds subview and sets translatesAutoresizingMaskIntoConstraints to false.

     - parameter subview: The subview to add and prepare for AutoLayout.
    */
    func subview(forAutoLayout subview: UIView) {
        self.view.addSubview(subview)
        subview.translatesAutoresizingMaskIntoConstraints = false
    }

    /**
     Variadic version of subview(forAutoLayout subview:) method.

     Adds subviews and sets translatesAutoresizingMaskIntoConstraints to false.

     - parameter subviews: The subviews to add and prepare for AutoLayout.
    */
    func subviews(forAutoLayout subviews: UIView...) {
        self.subviews(forAutoLayout: subviews)
    }

    /**
     Array version of subview(forAutoLayout subview:) method.

     Adds subviews and sets translatesAutoresizingMaskIntoConstraints to false.

     - parameter subviews: The subviews to add and prepare for AutoLayout.
    */
    func subviews(forAutoLayout subviews: [UIView]) {
        subviews.forEach(self.subview)
    }

    /**
     Helper function that sets the UIView's cornerRadius to a
     specific value and sets that UIView's layer to the same backgroundColor

     More performant than setting maskToBounds to true when dealing with many subviews
     with rounded corners such as UICollectionView/UITableView oriented screens

     - parameter value: The value used to set the UIView's cornerRadius.
    */
    func cornerRadius(of value: CGFloat) {
        self.view.layer.cornerRadius = value
        self.view.layer.backgroundColor = self.view.backgroundColor?.cgColor
    }

}

public extension UIView {
    /**
     RSJViewDSL instance to access custom methods
    */
    var rsj: RSJViewDSL {
        return RSJViewDSL(view: self)
    }
}
