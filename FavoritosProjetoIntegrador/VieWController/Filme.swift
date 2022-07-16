//
//  Filme.swift
//  FavoritosProjetoIntegrador
//
//  Created by Fernanda Perovano on 05/06/22.
//

import UIKit

class Filme {
    
    var nome: String
    var descricao: String
    var imagem: UIImage?
    
    init(nome: String, descricao: String, imagem: UIImage?){
        self.nome = nome
        self.descricao = descricao
        self.imagem = imagem
    }
}
