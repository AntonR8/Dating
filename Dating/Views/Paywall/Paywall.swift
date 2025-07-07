//
//  Paywall.swift
//  Dating
//
//  Created by Антон Разгуляев on 06.07.2025.
//

import SwiftUI

struct Paywall: View {
    @Binding var showPaywall: Bool
    
    var body: some View {
            ZStack {
                Color.white.ignoresSafeArea()
                VStack {
                    topButtons
                    Spacer()
                    tapBar
                    ZStack {
                        background
                        VStack {
                            title
                            button
                            terms
                        }
                        .padding(.horizontal)
                    }
                }
            }
            .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    Paywall(showPaywall: .constant(true))
}


extension Paywall {
    
    var background: some View {
        Image("paywall")
            .resizable()
            .scaledToFit()
            
    }
    
    var topButtons: some View {
        HStack {
            Button("", systemImage: "xmark") {
                showPaywall = false
            }
            
            Spacer()
            Button("Restore") {
                
            }
            .font(.custom("Lato-Regular", size: 16))
        }
        .foregroundStyle(Color.silver)
        .padding(.horizontal)
        .padding(.bottom)
    }
    
    var tapBar: some View {
        TabView {
            PaywallMessage(firstText: "Get ", secondText: "599 coins ", thirdText: "NOW And Every Week", image: "paywall1")
            PaywallMessage(firstText: "Send ", secondText: "Unlimited Messages", thirdText: "", image: "paywall2")
            PaywallMessage(firstText: "", secondText: "Turn off ", thirdText: "Camera & Sound", image: "paywall3")
            PaywallMessage(firstText: "Mark Your Profile With ", secondText: "VIP Status ", thirdText: "", image: "paywall4")
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .onAppear {
            UIPageControl.appearance().currentPageIndicatorTintColor = .tabActivePoint
            UIPageControl.appearance().pageIndicatorTintColor = .silver
        }
        .padding(.vertical, -16)
    }
    
    var title: some View {
        VStack {
            Text("Subscribe for $0.99 weekly")
                .font(.custom("Lato-SemiBold", size: 16))
            Text("Plan automatically renews. Cancel anytime.")
                .font(.custom("Lato-Regular", size: 13))
        }
        .foregroundStyle(.white)
        .padding(.vertical)
    }
    
    var button: some View {
        Button {
            
        } label: {
            Text("Subscribe")
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 48)
                .background(
                    LinearGradient(colors: [Color.paywallButton1, Color.paywallButton2], startPoint: .topLeading, endPoint: .bottomTrailing)
                )
                .clipShape(Capsule())
                .padding(.horizontal)
        }
    }
    
    var terms: some View {
        HStack {
            Link("Terms of Use", destination: URL(string: "google.com")!)
            Spacer()
            Link("Privacy & Policy", destination: URL(string: "google.com")!)
        }
        .font(.custom("Lato-Regular", size: 13))
        .underline()
        .foregroundStyle(.white)
        .padding(.horizontal, 32)
        .padding(.top)
        .padding(.bottom, (UIApplication.shared.connectedScenes.first as? UIWindowScene)?.windows.first?.safeAreaInsets.bottom ?? 0)
    }
    
}
