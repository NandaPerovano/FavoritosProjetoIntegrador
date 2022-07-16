//
//  FavoritoTableViewCell.swift
//  FavoritosProjetoIntegrador
//
//  Created by Fernanda Perovano on 05/06/22.
//

import UIKit

class FavoritoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imagemFilme: UIImageView!
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var strelaStackView: UIStackView!
    @IBOutlet weak var avaliacaoLabel: UILabel!
    
    func celulaCustomizada(imagem: UIImage?, nome: String) {
        imagemFilme.image = imagem
        nomeLabel.text = nome
    }
}


