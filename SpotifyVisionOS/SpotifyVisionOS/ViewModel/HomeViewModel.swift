//
//  HomeViewModel.swift
//  SpotifyVisionOS
//
//  Created by Livia Keller on 11/04/24.
//

import Foundation
import Observation

@Observable
class HomeViewModel {
    
    static let dadosMenu: [sideBarModel] = [
        sideBarModel(nome: "adicionados recentemente", icone: "clock"),
        sideBarModel(nome: "artistas", icone: "person"),
        sideBarModel(nome: "músicas", icone: "note")
    ]
    
    static let dadosAlbum: [album] = [
        album(nome: "musica",
              capa: "https://img.freepik.com/vetores-premium/maquete-de-disco-de-vinil-realista-na-capa-do-album-de-musica-em-branco-vazio-isolada-no-fundo-branco-retro-musical-long-play-em-caixa-de-papel-modelo-branco-ilustracao-vetorial-3d_341509-1731.jpg",
              banda: "novo album"),
        album(nome: "musica",
              capa: "https://img.freepik.com/vetores-premium/maquete-de-disco-de-vinil-realista-na-capa-do-album-de-musica-em-branco-vazio-isolada-no-fundo-branco-retro-musical-long-play-em-caixa-de-papel-modelo-branco-ilustracao-vetorial-3d_341509-1731.jpg",
              banda: "novo album"),
        album(nome: "musica",
              capa: "https://img.freepik.com/vetores-premium/maquete-de-disco-de-vinil-realista-na-capa-do-album-de-musica-em-branco-vazio-isolada-no-fundo-branco-retro-musical-long-play-em-caixa-de-papel-modelo-branco-ilustracao-vetorial-3d_341509-1731.jpg",
              banda: "novo album"),
        album(nome: "musica",
              capa: "https://img.freepik.com/vetores-premium/maquete-de-disco-de-vinil-realista-na-capa-do-album-de-musica-em-branco-vazio-isolada-no-fundo-branco-retro-musical-long-play-em-caixa-de-papel-modelo-branco-ilustracao-vetorial-3d_341509-1731.jpg",
              banda: "novo album")
    ]
    
    var dados: [sideBarModel] = dadosMenu
    var dadosAlbum: [album] = dadosAlbum
}
