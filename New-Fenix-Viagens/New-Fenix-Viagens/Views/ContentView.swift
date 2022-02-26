//
//  ContentView.swift
//  New-Fenix-Viagens
//
//  Created by Jefferson Oliveira de Araujo on 24/02/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            DestaquesView()
                .tabItem {
                    Text("Destaques")
                    Image("icone-destaques")
            }
            ListaDePacotesView()
                .tabItem {
                    Text("Pacotes")
                    Image("icone-mala")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
