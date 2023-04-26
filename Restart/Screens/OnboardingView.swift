//
//  OnboardingView.swift
//  Restart
//
//  Created by Simon Peter Ojok on 25/04/2023.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Onboarding")
                .font(.largeTitle)
            Button(action: {}) {
                Text("Start")
            }
            
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}