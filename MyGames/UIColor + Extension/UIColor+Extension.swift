//
//  UIColor+Extension.swift
//  MyGames
//
//  Created by Kato on 03/08/23.
//

import Foundation
import UIKit

extension UIColor {
    
    static var backgroundColor: UIColor {
        if #available(iOS 13, *) {
            return UIColor { UITraitCollection in
                switch UITraitCollection.userInterfaceStyle {
                case .dark:
                    return UIColor.systemGray5
                default:
                    return UIColor.white
                }
            }
        } else {
            return UIColor.white
        }
    }
}
