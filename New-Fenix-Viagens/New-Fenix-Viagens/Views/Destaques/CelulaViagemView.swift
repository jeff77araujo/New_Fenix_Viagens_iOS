//
//  CelulaViagemView.swift
//  New-Fenix-Viagens
//
//  Created by Jefferson Oliveira de Araujo on 24/02/22.
//

import SwiftUI

struct CelulaViagemView: View {
    
    var viagem: Viagem
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(viagem.titulo)
                .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 17 : 30))
            
            Image(viagem.imagem)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: self.horizontalSizeClass == .compact ? 125 : 220)
                .clipped()
            
            HStack {
                Text(viagem.quantidadeDeDias)
                    .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 17 : 30))
                
                Spacer()
                
                Text(viagem.valor)
                    .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 17 : 30))
            }
        }
        .padding(.leading, 20)
    }
}

struct CelulaViagemView_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            CelulaViagemView(viagem: viagens[0])
                .previewLayout(.fixed(width: 350, height: 200))
            
            CelulaViagemView(viagem: viagens[0])
                .previewLayout(.fixed(width: 550, height: 300))
        }
        
    }
}
