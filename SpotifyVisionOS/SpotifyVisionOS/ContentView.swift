//
//  ContentView.swift
//  SpotifyVisionOS
//
//  Created by Livia Keller on 11/04/24.
//

import SwiftUI
import RealityKit

struct ContentView: View {
    
    @State var text = ""
    @State var viewModel = HomeViewModel()
    var colunas: [GridItem] = [GridItem(.adaptive(minimum: 160, maximum: 200))]
    
    var body: some View {
        NavigationSplitView {
            List(viewModel.dados) { item in
                NavigationLink(value: item) {
                    Label(item.nome, systemImage: item.icone)
                        .foregroundStyle(.primary)
                }
                
            } .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    VStack(alignment: .leading) {
                        Text("biblioteca")
                            .font(.largeTitle)
                        
                        Text("todas as músicas")
                            .backgroundStyle(.tertiary)
                    }
                }
            }
            
        } detail: {
            ScrollView {
                TextField("procure em albuns", text: $text)
                    .textFieldStyle(.roundedBorder)
                    .padding(.bottom)
                
                LazyVGrid(columns: colunas, spacing: 24) {
                    ForEach(viewModel.dadosAlbum) { album in
                        Button(action: {}) {
                            VStack(alignment: .leading) {
                                AsyncImage(url: URL(string: album.capa)) { image in
                                    image.image?.resizable()
                                } .aspectRatio(contentMode: .fill)
                                    .scaledToFill()
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                
                                Text(album.nome)
                                    .lineLimit(1)
                                
                                Text(album.banda)
                                    .foregroundStyle(.green)
                                    .lineLimit(1)
                            }
                            .hoverEffect()
                        }
                        .buttonStyle(.plain)
                    }
                }
            }
            .padding(.horizontal, 20)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Image("spotify-logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                }
                
                ToolbarItem(placement: .topBarLeading) {
                    VStack(alignment: .leading) {
                        Text("Álbuns")
                            .font(.largeTitle)
                        Text("recentemente tocado")
                            .foregroundStyle(.tertiary)
                    }
                }
                
                ToolbarItem(placement: .bottomOrnament) {
                    HStack {
                        Image(systemName: "backward.fill")
                            .padding()
                        Image(systemName: "pause.fill")
                            .padding()
                        Image(systemName: "forward.fill")
                            .padding()
                    }
                    .padding(.vertical, 8)
                }
            }
        }
        .background(.black)
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
