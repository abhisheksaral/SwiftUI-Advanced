//
//  GradientText.swift
//  SwiftUI Advanced
//
//  Created by Abhishek Saral on 7/20/21.
//

import SwiftUI

struct GradientText: View {
    
    var text: String = "Text here"
    
    var body: some View {
        Text(text)
            .gradientForeground(colors:[Color("pink-gradient-1"), Color("pink-gradient-2")])
    }
}

extension View {
    public func gradientForeground(colors: [Color]) -> some View {
        self.overlay(LinearGradient(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing))
            .mask(self)
    }
}

struct GradientText_Previews: PreviewProvider {
    static var previews: some View {
        GradientText()
    }
}
