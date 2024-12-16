//
//  LobbyView.swift
//  Rolette
//
//  Created by Rob Miguel on 12/15/24.
//

import SwiftUI

struct LobbyView: View {
    var code: String? // For online games

    @State private var players: [String] = ["Player 1", "Player 2"] // Mock data

    var body: some View {
        VStack(spacing: 20) {
            if let code = code {
                Text("Game Code: \(code)")
                    .font(.system(size: 20, weight: .medium, design: .monospaced))
            }

            Text("Players:")
                .font(.system(size: 24, weight: .bold, design: .monospaced))

            ForEach(players, id: \.self) { player in
                Text(player)
                    .font(.system(size: 20, design: .monospaced))
            }

            Spacer()
        }
        .padding()
        .navigationBarTitle("Lobby", displayMode: .inline)
    }
}
