//
//  PacotesViagensView.swift
//  New-Fenix-Viagens
//
//  Created by Jefferson Oliveira de Araujo on 25/02/22.
//

import SwiftUI

struct PacotesViagensView: View {
    
    var pacote: PacoteDeViagem
    
    var body: some View {
        
        GeometryReader { view in
            
            VStack {
                Image(self.pacote.imagens.first ?? "")
                    .resizable()
                    .frame(height: 135)
                    .clipped()
                
                VStack {
                    Text(self.pacote.titulo)
                        .font(.custom("Avenir Black", size: 17))
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .leading)
                    Text(self.pacote.descricao)
                        .font(.custom("Avenir", size: 13))
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .leading)
                    Text(self.pacote.dataValidade)
                        .font(.custom("Avenir", size: 13))
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .leading)
                    
                    Text("A partir de")
                        .font(.custom("Avenir", size: 12))
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .trailing)
                    Text("R$ \(self.pacote.valor)")
                        .font(.custom("Avenir Black", size: 17))
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .trailing)
                        .foregroundColor(.orange)
                    Text("em até 12x")
                        .font(.custom("Avenir", size: 14))
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .trailing)
                    Text("Cancelamento Grátis")
                        .font(.custom("Avenir Black", size: 15))
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .trailing)
                        .foregroundColor(.green)
                }
            }
            .padding(.leading, 5)
            .padding(.trailing, 5)
            .padding(.bottom, 5)
            .padding(.top, -5)
        }
        .frame(width: 200, height: 290)
        .shadow(radius: 5, x: 3, y: 3)
        .border(Color(red: 221/255, green: 221/255, blue: 221/255))
    }
}

struct PacotesViagensView_Previews: PreviewProvider {
    static var previews: some View {
        PacotesViagensView(pacote: pacotesViagens[0])
            .previewLayout(.fixed(width: 200, height: 290))
    }
}
