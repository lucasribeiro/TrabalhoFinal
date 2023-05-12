//
//  ViewController.swift
//  TrabalhoFinal
//
//  Created by Lucas Luis Ribeiro on 10/05/23.
//

import UIKit

protocol ViewControllerDelegate {
    func changeTitle(reiceitaIndex: Int)
}

class ViewController: UIViewController, ViewControllerDelegate {

    var delegate: ViewControllerDelegate?
    @IBOutlet var lblNomeReceita: UILabel!
    @IBOutlet var lblIngredientes: UILabel!
    @IBOutlet var btnSelecionarReceita: UIButton!
    
    let receitas: [String] = ["Bolo de Laranja", "Carne Assada", "Risoto de Palmito", "Bacalhoada", "Peixe Assado", "Biscoito de Polvilho"]
    
    let ingredientes: [String] = ["Bolo de Laranja",
                                  "Carne Assada",
                                  "1 lata de Palmito\n½ Cebola picada\n2 xícaras de Arroz carnaroli ou arbóreo ",
                                  "Bacalhoada",
                                  "Peixe Assado",
                                  "Biscoito de Polvilho"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setHide(hide: true)
    }
    
    func setHide(hide: Bool) {
        lblNomeReceita?.isHidden = hide
        lblIngredientes?.isHidden = hide
    }

    func changeTitle(reiceitaIndex: Int) {
        lblNomeReceita?.text = receitas[reiceitaIndex]
        lblIngredientes?.text = ingredientes[reiceitaIndex]
        
        setHide(hide: false)
        btnSelecionarReceita.isEnabled = true
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tableView = segue.destination as? TableViewController
        
        tableView?.firstviewController = self

    }


}

