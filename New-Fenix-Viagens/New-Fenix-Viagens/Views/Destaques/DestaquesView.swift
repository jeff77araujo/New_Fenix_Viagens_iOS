//
//  DestaquesView.swift
//  New-Fenix-Viagens
//
//  Created by Jefferson Oliveira de Araujo on 26/02/22.
//

import SwiftUI

struct DestaquesView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        NavigationView {
            GeometryReader { view in
                VStack {
                    HeaderView()
                        .frame(width: view.size.width, height: self.horizontalSizeClass == .compact ? 200 : 310, alignment: .top)
                    
                    List(viagens) { viagem in
                        NavigationLink(destination: MapaView(coordenada: viagem.localizacao).navigationBarTitle("Localização")) {
                            CelulaViagemView(viagem: viagem)
                        }
                    }.navigationBarTitle("")
                }
            }
            .edgesIgnoringSafeArea(.top)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct DestaquesView_Previews: PreviewProvider {
    static var previews: some View {
        DestaquesView()
    }
}
