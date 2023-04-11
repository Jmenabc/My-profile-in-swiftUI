//
//  ContentView.swift
//  HomeManager
//
//  Created by Javier Mena-Bernal Carranza on 11/4/23.
//

import SwiftUI

struct ContentView: View {
    //Variables de estado
    @State private var showAlert = false
    
    var body: some View {
        NavigationView {
                        ZStack {
                            AsyncImage(url: URL(string: "https://e1.pxfuel.com/desktop-wallpaper/816/951/desktop-wallpaper-404942-anime-anime-girl-purple-hair-red-eyes-jacket-gloves-arknights-exusiai-anime-girl-jackets.jpg"))
                            .padding()
                            // Contenido desplazable
                            VStack {
                                Button("Go!!!!!") {
                                        showAlert = true
                                    }
                                    .controlSize(.large)
                                    .buttonStyle(.bordered)
                                    .alert(isPresented: $showAlert) {
                                        Alert(
                                            title: Text("Are you sure you can hang this???"),
                                            primaryButton: .default(Text("Yes"), action: {
                                                
                                            }),
                                            secondaryButton: .cancel(Text("No"), action: {
                                                
                                            })
                                        )
                                    }
                            }
                            .padding(16)
                        }.navigationBarTitle("Javier Mena")
                    
                    
                }
            }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
