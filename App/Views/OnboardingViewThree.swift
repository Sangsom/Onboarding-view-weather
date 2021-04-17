//
//  OnboardingViewThree.swift
//  Onboarding Quality Weather
//
//  Created by Rinalds Domanovs on 16/04/2021.
//

import SwiftUI

struct OnboardingViewThree: View {
    @State private var isAnimating: Bool = false
    
    var body: some View {
        VStack(spacing: 20.0) {
            ZStack {
                Image("onboarding-bg-3")
                    .resizable()
                    .scaledToFit()

                Image("onboarding-object-3")
                    .resizable()
                    .scaledToFit()
                    .offset(x: 0, y: 150)
                    .scaleEffect(isAnimating ? 1 : 0.9)
            }

            Spacer()
            Spacer()

            Text("Get air quality information")
                .font(.title2)
                .bold()
                .foregroundColor(Color(red: 41 / 255, green: 52 / 255, blue: 73 / 255))

            Text("Immediate, accurate air quality data to help you create healthier.")
                .font(.headline)
                .multilineTextAlignment(.center)
                .frame(maxWidth: 250)
                .foregroundColor(Color(red: 237 / 255, green: 203 / 255, blue: 150 / 255))
                .shadow(color: Color.black.opacity(0.1), radius: 1, x: 2, y: 2)

            Spacer()

            Button(action: {

            }, label: {
                Text("Get Started")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.horizontal, 50)
                    .padding(.vertical, 16)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(
                                Color(
                                    red: 255 / 255,
                                    green: 115 / 255,
                                    blue: 115 / 255
                                )
                            )
                    )
            })
            .shadow(radius: 10)

            Spacer()
        }
        .onAppear(perform: {
            isAnimating = false
            withAnimation(.easeOut(duration: 0.5)) {
                self.isAnimating = true
            }
        })
    }
}

struct OnboardingViewThree_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingViewThree()
    }
}
