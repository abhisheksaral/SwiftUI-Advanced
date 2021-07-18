//
//  ContentView.swift
//  SwiftUI Advanced
//
//  Created by Abhishek Saral on 7/17/21.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        ZStack {
            Image("background-3")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea(.all)
            VStack {
                VStack(alignment: .leading, spacing: 16) {
                    Text("Sign Up")
                        .font(Font.largeTitle.bold())
                        .foregroundColor(.white)
                    Text("Access to 120+ hours of courses, tutorials and livestreams")
                        .font(.subheadline)
                        .foregroundColor(Color.white.opacity(0.7))
                }
                .padding(20)
            }
            .background(
            RoundedRectangle(cornerRadius: 30)
                .stroke(Color.white.opacity(0.2))
                .background(Color("secondaryBackground").opacity(0.5))
                .background(VisualEffectBlur(blurStyle: .systemThinMaterialDark))
                .shadow(color: Color("shadowColor").opacity(0.5), radius: 60, x: 0, y: 30)
                .cornerRadius(30)
                .padding(.horizontal)
        )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
