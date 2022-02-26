//
//  HeaderView.swift
//  New-Fenix-Viagens
//
//  Created by Jefferson Oliveira de Araujo on 24/02/22.
//

import SwiftUI

struct HeaderView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        
        GeometryReader { view in
            VStack {
                VStack {
                    Text("Fênix Viagens")
                        .font(.custom("Avenir Black", size: self.horizontalSizeClass == .compact ? 30 : 40))
                        .foregroundColor(Color.white)
                        .padding(.top, self.horizontalSizeClass == .compact ? 30 : 50)
                    Text("ESPECIAL")
                        .font(.custom("Avenir Book", size: self.horizontalSizeClass == .compact ? 20 : 30))
                        .foregroundColor(Color.white)
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                        .padding(.leading, 20)
                    Text("BRASIL")
                        .font(.custom("Avenir Black", size: self.horizontalSizeClass == .compact ? 23 : 33))
                        .foregroundColor(Color.white)
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                }
                .frame(width: view.size.width, height: self.horizontalSizeClass == .compact ? 180 : 250, alignment: .top)
                .background(Color.purple)
                
                HStack {
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Hotéis")
                            .font(.custom("Avenir Medium", size: self.horizontalSizeClass == .compact ? 17 : 33))
                            .foregroundColor(Color.white)
                    }
                    .frame(width: self.horizontalSizeClass == .compact ? 100 : 180, height: self.horizontalSizeClass == .compact ? 50 : 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 10))
                    .background(Color.blue)
                    .offset(x: self.horizontalSizeClass == .compact ? 50 : view.size.width / 7)
                    
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Pacotes")
                            .font(.custom("Avenir Medium", size: self.horizontalSizeClass == .compact ? 17 : 33))
                            .foregroundColor(Color.white)
                    }
                    .frame(width: self.horizontalSizeClass == .compact ? 100 : 180, height: self.horizontalSizeClass == .compact ? 50 : 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 10))
                    .background(Color.orange)
                    .offset(x: self.horizontalSizeClass == .compact ? -50 : -view.size.width / 7)
                }
                .offset(y: self.horizontalSizeClass == .compact ? -25 : -35)
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            HeaderView()
                .environment(\.horizontalSizeClass, .compact)
                .previewLayout(.fixed(width: 400, height: 220))
            
            HeaderView()
                .environment(\.horizontalSizeClass, .regular)
                .previewLayout(.fixed(width: 700, height: 310))
        }
        
    }
}
