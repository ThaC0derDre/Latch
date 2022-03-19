//
//  AnimatedButton.swift
//  Latched
//
//  Created by Andres Gutierrez on 3/18/22.
//

import SwiftUI

struct AnimatedButton: View{
    @State private var aanimationNumb = 1.0
    
    var body: some View {
        Button("") {}
        .padding(65)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        // add overlay effect.
        .overlay(
            Circle()
                .stroke(.blue)
                .scaleEffect(aanimationNumb)
                .opacity(2 - aanimationNumb)
                .animation(.easeInOut(duration: 1).repeatForever(autoreverses: false), value: aanimationNumb)
            )
        // use on appear to trigger effect
        .onAppear {
            aanimationNumb += 1
        }
        .onDisappear {
            aanimationNumb = 1.0
        }
    }
        
}



struct AnimatedButton_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedButton()
    }
}
