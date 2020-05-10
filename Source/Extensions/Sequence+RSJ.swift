//
//  Sequence+RSJ.swift
//  RSJ
//
//  Created by Rael San Juan on 5/10/20.
//  Copyright © 2020 Rael San Juan. All rights reserved.
//

/**
 A DSL for Sequence to access custom methods
 */
public struct RSJSequenceDSL<T: Sequence> {

    // MARK: Stored Propeties
    /**
     Underlying Sequence instance
     */
    public let sequence: T

}

public extension RSJSequenceDSL where T.Element: Hashable {

    /**
     Returns an array of Elements but removes duplicates while retaining the order of the different Elements
    */
    var uniqued: [T.Element] {
        var seen: Set<T.Element> = []
        return self.sequence.filter({ (element: T.Element) -> Bool in
            switch seen.contains(element) {
                case true:
                    return false

                case false:
                    seen.insert(element)
                    return true
            }
        })
    }
    /**
     Returns an array of tuples where each Element is paired up with the next Element.

     For example:
     ```
     let strings: [String] = ["A", "B", "C"]
     let pairedStrings: [(String, String)] = strings.paired // [("A", "B"), ("B", "C")]
     ```
    */
    var paired: [(T.Iterator.Element, T.Iterator.Element)] {
        return Array(zip(self.sequence, self.sequence.dropFirst()))
    }

}

public extension Sequence {

    /**
     RSJSequenceDSL instance to access custom methods
    */
    var rsj: RSJSequenceDSL<Self> {
        return RSJSequenceDSL(sequence: self)
    }
}
