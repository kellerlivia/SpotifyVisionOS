//
//  SpotifyVisionOSApp.swift
//  SpotifyVisionOS
//
//  Created by Livia Keller on 11/04/24.
//

import SwiftUI

@main
struct SpotifyVisionOSApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
