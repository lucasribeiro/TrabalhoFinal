//
//  NavigateController2.swift
//  TrabalhoFinal
//
//  Created by Lucas Luis Ribeiro on 10/05/23.
//

import Foundation
import UIKit

class NavigationViewController2 : UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pushViewController(TableViewController(), animated: true)
    }
}
