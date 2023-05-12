//
//  TableViewController.swift
//  TrabalhoFinal
//
//  Created by Lucas Luis Ribeiro on 10/05/23.
//

import Foundation
import UIKit

class TableViewController : UITableViewController {
    
    var firstviewController: ViewController?
    
    let receitas: [String] = ["Bolo de Laranja", "Carne Assada", "Risoto de Palmito", "Bacalhoada", "Peixe Assado", "Biscoito de Polvilho"]
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("cell positon: \(indexPath.row) taped")
        firstviewController?.changeTitle(reiceitaIndex: indexPath.row)
        
        //tableView.deselectRow(at: indexPath, animated: true)
        
       // let navigationViewController = NavigationViewController()
        //navigationViewController.modalPresentationStyle = .fullScreen
        
        //self.present(navigationViewController, animated: true)
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        cell.backgroundColor = .white
        cell.textLabel?.text = "\(indexPath.row): \(receitas[indexPath.row])"
        cell.textLabel?.textAlignment = .left
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return receitas.count
    }
}
