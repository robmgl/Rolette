//
//  GameSetupView.swift
//  Rolette
//
//  Created by Rob Miguel on 12/15/24.
//

import SwiftUI

struct GameSetupView: View {
    @State private var mafiaCount: Int = 1
    @State private var detectiveCount: Int = 1
    var isOnline: Bool

    var body: some View {
        VStack(spacing: 40) {
            Text("Game Setup")
                .font(.system(size: 36, weight: .bold, design: .monospaced))
                .padding(.top, 100)

            VStack(spacing: 20) {
                HStack {
                    Text("Mafia Roles:")
                        .font(.system(size: 20, weight: .medium, design: .monospaced))
                    Spacer()
                    Stepper("\(mafiaCount)", value: $mafiaCount, in: 1...10)
                }

                HStack {
                    Text("Detective Roles:")
                        .font(.system(size: 20, weight: .medium, design: .monospaced))
                    Spacer()
                    Stepper("\(detectiveCount)", value: $detectiveCount, in: 1...10)
                }
            }
            .padding(.horizontal, 40)

            Spacer()

            if isOnline {
                NavigationLink(destination: LobbyView(code: "1234")) { // Replace with generated code
                    Text("Start Online Game")
                        .font(.system(size: 24, weight: .medium, design: .monospaced))
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            } else {
                NavigationLink(destination: LobbyView(code: nil)) {
                    Text("Start Local Game")
                        .font(.system(size: 24, weight: .medium, design: .monospaced))
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}
