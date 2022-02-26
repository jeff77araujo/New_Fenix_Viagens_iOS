//
//  SecaoPacotesView.swift
//  New-Fenix-Viagens
//
//  Created by Jefferson Oliveira de Araujo on 25/02/22.
//

import SwiftUI

struct SecaoPacotesView: View {
    
    var nomeSecao: String
    var pacotes: [PacoteDeViagem]
    
    var body: some View {
        
        GeometryReader { view in
            VStack {
                Text(self.nomeSecao)
                    .font(.headline)
                    .frame(width: view.size.width, alignment: .leading)
                    .padding(.leading, 20)
                    .padding(.top, 10)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(self.pacotes) { pacote in
                            NavigationLink(destination: DetalhesViagemView(pacote: pacote)
                                .navigationBarTitle("")
                                .navigationBarHidden(true)) {
                                
                                PacotesViagensView(pacote: pacote)
                                    .frame(width: 200, height: 290)
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                }
            }
            .frame(height: 350)
            .background(Color(red: 247/255, green: 247/255, blue: 247/255))
        }
    }
}

struct SecaoPacotesView_Previews: PreviewProvider {
    static var previews: some View {
        SecaoPacotesView(nomeSecao: pacotesViagens[0].categoria.rawValue, pacotes: pacotesViagens)
            .previewLayout(.fixed(width: 600, height: 350))
    }
}
