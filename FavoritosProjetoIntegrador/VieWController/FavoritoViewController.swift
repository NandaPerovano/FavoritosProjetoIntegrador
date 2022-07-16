//
//  FavoritoViewController.swift
//  FavoritosProjetoIntegrador
//
//  Created by Fernanda Perovano on 05/06/22.
//

import UIKit

class FavoritoViewController: UIViewController {

    @IBOutlet weak var favoritoLabel: UILabel!
    @IBOutlet weak var favoritoTableView: UITableView!
    
    private var listagem = ServicoFilme()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        favoritoTableView.dataSource = self
        favoritoTableView.delegate = self
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let detalhesVC = segue.destination as? ModalFilmeViewController {
//            detalhesVC.filme = listagem.listadeFilmes
//        }
     
        if segue.identifier == "FavoritoSegue" {
            if let indexPath = favoritoTableView.indexPathForSelectedRow {
                let filmeSelecionado = listagem.listadeFilmes[indexPath.row]
                let viewControllerDestino = segue.destination as! ModalFilmeViewController
                viewControllerDestino.filme = filmeSelecionado
            }
    }
}
}

extension FavoritoViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listagem.listadeFilmes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = favoritoTableView.dequeueReusableCell(withIdentifier: "cellFavorito", for: indexPath) as? FavoritoTableViewCell {
           let filmes = listagem.listadeFilmes[indexPath.row]
            cell.celulaCustomizada(imagem: filmes.imagem, nome: filmes.nome)
            return cell
        }
       return UITableViewCell()
    }
}

extension FavoritoViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "FavoritoSegue", sender: listagem.listadeFilmes[indexPath.row])
    }
}

