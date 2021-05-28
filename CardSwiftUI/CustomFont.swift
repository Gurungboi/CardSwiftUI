//
//  CustomFont.swift
//  CardSwiftUI
//
//  Created by Sunil on 28/5/21.
//


import SwiftUI

struct CustomLightFont: View {
    
    var title: String
    var size: CGFloat
    var textColor: Color
    
    var body: some View {
        Text(title)
            .font(.sofiaProLight(size: size))
            .foregroundColor(textColor)
    }
}

struct CustomRegularFont: View {
    
    var title: String
    var size: CGFloat
    var textColor: Color
    
    var body: some View {
        Text(title)
            .font(.sofiaProRegular(size: size))
            .foregroundColor(textColor)
    }
}


struct CustomMediumFont: View {
    
    var title: String
    var size: CGFloat
    var textColor: Color
    
    var body: some View {
        Text(title)
            .font(.sofiaProMedium(size: size))
            .foregroundColor(textColor)
    }
}

struct CustomSemiBoldFont: View {
    
    var title: String
    var size: CGFloat
    var textColor: Color
    
    var body: some View {
        Text(title)
            .font(.sofiaProSemiBold(size: size))
            .foregroundColor(textColor)
    }
}

