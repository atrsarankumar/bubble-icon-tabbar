//
//  HomeTabBarController.swift
//  BubbleTabBar
//
//  Created by saran on 25/12/20.
//  Copyright © 2020 cuberto. All rights reserved.
//

import UIKit

class HomeTabBarController: BubbleTabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBar.backgroundColor = #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1)
    }
}
