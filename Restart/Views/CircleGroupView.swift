//
//  CircleGroupView.swift
//  Restart
//
//  Created by Simon Peter Ojok on 26/04/2023.
//

import SwiftUI

struct CircleGroupView: View {
    @State private var isAnimating: Bool = false
    
    let shapeColor: Color
    let shapeOpacity: Double
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        }.blur(radius: isAnimating ? 0 : 10)
            .opacity(isAnimating ? 1 : 0)
            .scaleEffect(isAnimating ? 1 : 0.5)
            .animation(.easeIn(duration: 1), value: isAnimating)
            .onAppear {
                isAnimating = true
            }
    }
}

struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea()
            
            CircleGroupView(
                shapeColor: .white,
                shapeOpacity: 0.2
            )
        }
    }
}
