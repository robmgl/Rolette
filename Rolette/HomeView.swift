//
//  ContentView.swift
//  Rolette
//
//  Created by Rob Miguel on 12/15/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 40) {
            Text("Rolette")
                .font(.system(size: 48, weight: .bold, design: .monospaced))
                .multilineTextAlignment(.center)
                .padding(.top, 100)

            VStack(spacing: 20) {
                NavigationLink(destination: CreateGameView()) {
                    Text("Create Game")
                        .font(.system(size: 24, weight: .medium, design: .monospaced))
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }

                NavigationLink(destination: JoinGameView()) {
                    Text("Join Game")
                        .font(.system(size: 24, weight: .medium, design: .monospaced))
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .padding(.horizontal, 40)

            Spacer()
        }
        .navigationBarHidden(true)
    }
}


#Preview {
    HomeView()
}
