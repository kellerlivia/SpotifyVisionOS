//
//  SpotifyModel.swift
//  SpotifyVisionOS
//
//  Created by Livia Keller on 11/04/24.
//

import Foundation

struct sideBarModel: Identifiable, Hashable {
    var id = UUID()
    var nome: String
    var icone: String
}

struct album: Identifiable {
    var id = UUID()
    var nome: String
    var capa: String
    var banda: String
}
