//
//  Font+Extension.swift
//  CardSwiftUI
//
//  Created by Sunil on 28/5/21.
//

import SwiftUI

extension Font {
    // MARK: - Sofia Pro
    static func sofiaProLight(size: CGFloat) -> Font {
        return Font.custom("SofiaProLight", size: size)
    }

    static func sofiaProRegular(size: CGFloat) -> Font {
        return Font.custom("SofiaProRegular", size: size)
    }

    static func sofiaProMedium(size: CGFloat) -> Font {
        return Font.custom("SofiaProMedium", size: size)
    }
    
    static func sofiaProSemiBold(size: CGFloat) -> Font {
        return Font.custom("SofiaProSemiBold", size: size)
    }
}
