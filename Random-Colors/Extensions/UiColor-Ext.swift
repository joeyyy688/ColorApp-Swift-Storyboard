//
//  UiColor-Ext.swift
//  Random-Colors
//
//  Created by Joseph on 4/22/23.
//

import UIKit

extension UIColor{
    static func randomColor() -> UIColor{
        return UIColor(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1),
            alpha: 1
        )
    }
}
