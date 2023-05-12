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
    @IBOutlet var lblModoPreparo: UILabel!
    
    @IBOutlet var btnSelecionarReceita: UIButton!
    
    let receitas: [String] = ["Bolo de Laranja", "Carne Assada", "Risoto de Palmito", "Bacalhoada", "Peixe Assado", "Biscoito de Polvilho"]
    
    let ingredientes: [String] = ["- 4 ovos\n- 1 xícara (chá) de óleo\n- Casca de 1 laranja\n- Suco de 2 laranjas\n- 1 colher (sopa) de fermento\n- 2 xícaras (chá) de farinha de trigo",
                                  "- 1 kg de miolo de acém\n- 4 dentes de alho\n- Sal a gosto\n- 2 colheres (sopa) de vinagre\n- 1 colher (sopa) de óleo\n- 1 cebola picadinha",
                                  "- 1 lata de Palmito\n- ½ Cebola picada\n- 2 xícaras de Arroz carnaroli ou arbóreo\n- 4 colheres (sopa) de queijo parmesão ralado\n- 250 g de creme de leite\n- 3 colheres de manteiga",
                                  "- 1,5 kg de bacalhau salgado\n- 800 g de batatas descascadas\n- 1 pimentão verde cortado em tiras\n- 100 g de azeitonas pretas sem caroço\n- 3 ovos cozidos\n- Sal a gosto",
                                  "- 1 peixe médio e inteiro\n - 4 batatas grandes\n- Sala gosto\n- Azeite\n- Alho",
                                  "- 500 g de polvilho azedo\n- 200 ml de água fervente\n- 150 ml de óleo\n- 5 ovos\n- Sal a gosto"]
    
    let modoPreparo: [String] = ["Bata no liquidificador os ovos, o açúcar, o óleo, o suco e a casca da laranja. Passe para uma tigela e acrescente a farinha de trigo e o fermento. Leve para assar em uma forma com furo central, untada e enfarinhada, por mais ou menos 30 minutos. Desenforme o bolo e molhe com suco de laranja.",
                                 "Em um recipiente, misture todos os temperos, acrescente a carne e deixe marinar por 30 minutos. Aqueça a panela de pressão, acrescente o óleo, a carne com o molho do tempero e tampe a panela. Quando a panela atingir a pressão, abaixe o fogo e deixe cozinhar por 1 hora. Está pronto para servir!",
                                 "Numa panela grossa, aqueça 2 colheres de manteiga, refogue a cebola até ficar transparente. Junte o arroz, refogue rapidamente, coloque o vinho, mexa até evaporar. Adicione metade do caldo e mexa. Desligue o fogo ou abaixe bem, junte o palmito, o creme de leite, o restante da manteiga e o queijo.Misture tudo, polvilhe com a salsa e sirva em seguida.",
                                 "Deixe o bacalhau de molho de um dia para o outro. Em uma panela grande, coloque as batatas, cubra com água e cozinhe por 20 minutos. Tempere com 1 colher de sal e 1 colher de Ajinomoto, e regue com o azeite. Finalmente, distribua sobre a superfície as rodelas de ovo cozido, regue novamente com o azeite de oliva e leve ao forno por cerca de 1 hora. Sirva em seguida.",
                                 "Em um tabuleiro, cubra o fundo com papel-alumínio e deixe mais um pedaço. Descasque as batatas e corte em rodelas, forre o fundo do tabuleiro com elas. Salpique um pouco de sal e azeite. Tempere o peixe com alho, sal e azeite. Coloque por cima das batatas. Cubra com papel-alumínio. Deixe assar por 40 minutos em 200° C, descubra o peixe e asse por mais 10 minutos.",
                                    "Em uma vasilha acrescente o polvilho, a água fervente e o óleo, misture bem e acrescente o sal a gosto. Adicione por último os ovos, um de cada vez, até obter uma massa consistente. Coloque a massa em um saquinho de confeiteiro e modele os biscoitos em uma forma (não é necessário untar a forma). Leve para assar em forno médio (180° C), preaquecido, por 25 minutos."]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setHide(hide: true)
    }
    
    func setHide(hide: Bool) {
        lblNomeReceita?.isHidden = hide
        lblIngredientes?.isHidden = hide
        lblModoPreparo?.isHidden = hide
    }

    func changeTitle(reiceitaIndex: Int) {
        lblNomeReceita?.text = receitas[reiceitaIndex]
        lblIngredientes?.text = ingredientes[reiceitaIndex]
        lblModoPreparo?.text = modoPreparo[reiceitaIndex]
        
        
        setHide(hide: false)
        btnSelecionarReceita.isEnabled = true
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tableView = segue.destination as? TableViewController
        
        tableView?.firstviewController = self

    }


}

