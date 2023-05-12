//
//  NavigationViewController.swift
//  TrabalhoFinal
//
//  Created by Lucas Luis Ribeiro on 10/05/23.
//

import Foundation
import UIKit

class NavigationViewController : UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pushViewController(ViewController(), animated: true)
    }
}
