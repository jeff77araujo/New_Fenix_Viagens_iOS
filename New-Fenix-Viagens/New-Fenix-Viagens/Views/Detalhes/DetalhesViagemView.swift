//
//  DetalhesViagemView.swift
//  New-Fenix-Viagens
//
//  Created by Jefferson Oliveira de Araujo on 26/02/22.
//

import SwiftUI

struct DetalhesViagemView: View {
    
    var pacote: PacoteDeViagem
    var colorFontDefault = Color(red: 77/255, green: 77/255, blue: 77/255)
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        GeometryReader { view in
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    ZStack(alignment: .top) {
                        Image(pacote.imagens[0])
                            .resizable()
                            .frame(height: 200)
                        
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image("icone-voltar")
                                .resizable()
                                .renderingMode(Image.TemplateRenderingMode.original) // deixa icone cor defaukt
                                .frame(width: 18, height: 25, alignment: .leading)
                                .padding(.leading, 15)
                                .padding(.top, 20)
                        }
                        .frame(minWidth: 20, maxWidth: .infinity, alignment: .leading)
                    }
                    
                    VStack {
                        
                        Group {
                            Text(pacote.titulo.uppercased())
                                .font(.custom("Avenir Black", size: 26))
                                .foregroundColor(colorFontDefault)
                                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .leading)
                            
                            Text(pacote.descricao)
                                .font(.custom("Avenir", size: 16))
                                .foregroundColor(colorFontDefault)
                                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .leading)
                            
                            Spacer().frame(height: 20)
                        }
                        
                        Text(pacote.detalhes)
                            .font(.custom("Avenir Black", size: 16))
                            .foregroundColor(colorFontDefault)
                            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .leading)
                        
                        Spacer().frame(height: 20)
                        
                        HStack {
                            VStack {
                                Text("Válido para o período de:")
                                    .font(.custom("Avenir", size: 14))
                                    .foregroundColor(colorFontDefault)
                                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .leading)
                                
                                Text(pacote.dataValidade)
                                    .font(.custom("Avenir", size: 14))
                                    .foregroundColor(colorFontDefault)
                                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .leading)
                            }
                            
                            VStack {
                                Text("R$ \(pacote.valor)")
                                    .font(.custom("Avenir Black", size: 22))
                                    .foregroundColor(.orange)
                                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .trailing)
                                
                                Text("Sem taxa em até 12x")
                                    .font(.custom("Avenir", size: 14))
                                    .foregroundColor(colorFontDefault)
                                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .trailing)
                            }
                        }
                        
                        Divider()
                        
                        VStack {
                            Text("O que esta incluso:")
                                .font(.custom("Avenir", size: 20))
                                .foregroundColor(colorFontDefault)
                                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .leading)
                        }
                        
                        HStack {
                            VStack {
                                Image("icone-apartamento")
                                Text("Apartamento")
                                    .font(.custom("Avenir", size: 14))
                                    .foregroundColor(colorFontDefault)
                                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .center)
                            }
                            
                            Spacer().frame(height: 15)
                            
                            VStack {
                                Image("icone-aviao")
                                Text("Passagem Aérea")
                                    .font(.custom("Avenir", size: 14))
                                    .foregroundColor(colorFontDefault)
                                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .center)
                            }
                        }
                        .padding(.leading, 40)
                        .padding(.trailing, 40)
                        
                        Divider()
                        
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Text("Escolher opção")
                                .font(.custom("Avenir Black", size: 16))
                                .foregroundColor(.white)
                                
                        }
                        .frame(width: view.size.width-30, height: 40, alignment: .center)
                        .background(Color(red: 221/255, green: 58/255, blue: 126/255))
                    }
                    .padding(.leading, 7)
                    .padding(.trailing, 7)
                }
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct DetalhesViagemView_Previews: PreviewProvider {
    static var previews: some View {
        DetalhesViagemView(pacote: pacotesViagens[0])
    }
}
