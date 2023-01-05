//
//  CGFloat+Utils.swift
//  ColorsViewExample
//
//  Created by Marcelo Sampaio on 05/01/23.
//

import Foundation

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}
