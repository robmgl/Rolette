//
//  JoinGaveView.swift
//  Rolette
//
//  Created by Rob Miguel on 12/15/24.
//

import SwiftUI

struct JoinGameView: View {
    @State private var code: String = ""
    @State private var name: String = ""

    var body: some View {
        VStack(spacing: 40) {
            Text("Join Game")
                .font(.system(size: 36, weight: .bold, design: .monospaced))
                .padding(.top, 100)

            VStack(spacing: 20) {
                TextField("Game Code", text: $code)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 40)

                TextField("Your Name", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 40)
            }

            Button(action: {
                // Logic to join game
            }) {
                Text("Join")
                    .font(.system(size: 24, weight: .medium, design: .monospaced))
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding(.horizontal, 40)

            Spacer()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}
