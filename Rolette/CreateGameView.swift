//
//  CreateGameView.swift
//  Rolette
//
//  Created by Rob Miguel on 12/15/24.
//

import SwiftUI

struct CreateGameView: View {
    @State private var isOnlineGame = false

    var body: some View {
        VStack(spacing: 40) {
            Text("Create Game")
                .font(.system(size: 36, weight: .bold, design: .monospaced))
                .padding(.top, 100)

            VStack(spacing: 20) {
                NavigationLink(destination: GameSetupView(isOnline: true)) {
                    Text("Online")
                        .font(.system(size: 24, weight: .medium, design: .monospaced))
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }

                NavigationLink(destination: GameSetupView(isOnline: false)) {
                    Text("Local")
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
        .navigationBarTitleDisplayMode(.inline)
    }
}

