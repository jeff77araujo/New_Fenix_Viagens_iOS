//
//  ListaDePacotesView.swift
//  New-Fenix-Viagens
//
//  Created by Jefferson Oliveira de Araujo on 25/02/22.
//

import UIKit
import SwiftUI

struct ListaDePacotesView: View {
    
    var categorias: [String:[PacoteDeViagem]] {
        Dictionary(grouping: pacotesViagens, by: { $0.categoria.rawValue })
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(categorias.keys.sorted(), id: \.self) { chave in
                    SecaoPacotesView(nomeSecao: chave, pacotes: self.categorias[chave]!)
                        .frame(height: 350)
                }
            }
            .navigationBarTitle("Pacotes")
            .padding(.leading, -10)
            .padding(.trailing, 7)
        }
//        .onAppear() {
//            UITableView.appearance().separatorStyle = .none
//            UITableView.appearance().backgroundColor = UIColor(red: 247.0/255, green: 247.0/255, blue: 247.0/255, alpha: 1)
//            UITableViewCell.appearance().backgroundColor = UIColor(red: 247.0/255, green: 247.0/255, blue: 247.0/255, alpha: 1)
//            UINavigationBar.appearance().backgroundColor = UIColor(red: 247.0/255, green: 247.0/255, blue: 247.0/255, alpha: 1)
//        }
//        .onDisappear {
//            UITableView.appearance().separatorStyle = .singleLine
//            UITableView.appearance().backgroundColor = nil
//            UITableViewCell.appearance().backgroundColor = nil
//            UINavigationBar.appearance().backgroundColor = nil
//        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct ListaDePacotesView_Previews: PreviewProvider {
    static var previews: some View {
        ListaDePacotesView()
    }
}
