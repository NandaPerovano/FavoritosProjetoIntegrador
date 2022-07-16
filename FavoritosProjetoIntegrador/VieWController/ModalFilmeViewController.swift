//
//  ModalFilmeViewController.swift
//  FavoritosProjetoIntegrador
//
//  Created by Fernanda Perovano on 05/06/22.
//

import UIKit

class ModalFilmeViewController: UIViewController {
    
    @IBOutlet weak var imagemFilme: UIImageView!
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var descriçaoLabel: UILabel!
    
    var filme: Filme!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagemFilme.image = filme.imagem
        nomeLabel.text = filme.nome
        descriçaoLabel.text = filme.descricao
        //imagemFilme.layer.cornerRadius = 70
    }
}
