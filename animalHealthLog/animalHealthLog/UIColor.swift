//
//  UIColor.swift
//  animalHealthLog
//
//  Created by 細川聖矢 on 2020/05/20.
//  Copyright © 2020 Seiya. All rights reserved.
//

import Foundation
import SwiftUI

extension UIColor{
    static var pinkHeader:UIColor{
        return UIColor(named: "pink-header") ?? UIColor.red
    }
    
    static var greyBack:UIColor{
        return UIColor(named: "grey-back") ?? UIColor.red
    }
    
    static var greyText:UIColor{
        return UIColor(named: "grey-text") ?? UIColor.red
    }
    
    static var greyTitle:UIColor{
        return UIColor(named: "grey-title") ?? UIColor.red
    }
}
