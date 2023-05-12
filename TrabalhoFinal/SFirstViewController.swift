//
//  SFirstViewController.swift
//  TrabalhoFinal
//
//  Created by Lucas Luis Ribeiro on 10/05/23.
//

import Foundation
import UIKit

class SFirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tvReceita: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tvReceita!.delegate = self

        self.tvReceita!.dataSource = self
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
        
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 10 // your number of cells here
        }


    private func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
            // cell selected code here
        }

}
