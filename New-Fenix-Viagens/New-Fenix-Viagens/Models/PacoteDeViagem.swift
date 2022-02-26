//
//  PacoteDeViagem.swift
//  New-Fenix-Viagens
//
//  Created by Jefferson Oliveira de Araujo on 26/02/22.
//

import Foundation

struct PacoteDeViagem: Codable, Identifiable {

    enum CodingKeys: String, CodingKey {
       case id, titulo, categoria, descricao, detalhes, dataValidade = "data", imagens, itensInclusos, valor
    }

    var id: Int
    var titulo: String
    var valor: String
    var categoria: Categoria
    var descricao: String
    var detalhes: String
    var dataValidade: String
    var imagens: [String]
    var itensInclusos: [Item]

    enum Categoria: String, CaseIterable, Codable, Hashable {
        case europa = "Europa"
        case americaDoSul = "America do sul"
        case americaDoNorte = "America do norte"
    }
}

struct Item: Codable {

    enum CodingKeys: String, CodingKey {
       case id, titulo, imagem
    }

    var id: Int
    var titulo: String
    var imagem: String
}
