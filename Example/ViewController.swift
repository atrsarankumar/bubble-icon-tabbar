//
//  ViewController.swift
//  BubbleTabBar
//
//  Created by askopin@gmail.com on 11/29/2018.
//  Copyright (c) 2018 askopin@gmail.com. All rights reserved.
//

import UIKit
import BubbleTabBar

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnFromCodePressed(_ sender: AnyObject) {
        let eventsVC = CBSampleViewController()
        eventsVC.tabBarItem = UITabBarItem(title: "News", image: UIImage(named: "News"), tag: 0)
        eventsVC.tabBarItem.selectedImage =  UIImage(named: "NewsSelected")
        eventsVC.inverseColor()
        let searchVC = CBSampleViewController()
        searchVC.tabBarItem = UITabBarItem(title: "Training", image: UIImage(named: "Training"), tag: 0)
        searchVC.tabBarItem.selectedImage =  UIImage(named: "TrainingSelected")
        let activityVC = CBSampleViewController()
        activityVC.tabBarItem = UITabBarItem(title: "Live", image: UIImage(named: "Live"), tag: 0)
        activityVC.tabBarItem.selectedImage =  UIImage(named: "LiveSelected")
        let settingsVC = CBSampleViewController()
        settingsVC.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(named: "Profile"), tag: 0)
        settingsVC.tabBarItem.selectedImage =  UIImage(named: "ProfileSelected")

        let tabBarController = BubbleTabBarController()
        tabBarController.viewControllers = [eventsVC, searchVC, activityVC, settingsVC]
//        tabBarController.tabBar.select
//        if #available(iOS 10.0, *) {
//            tabBarController.tabBar.unselectedItemTintColor = UIColor.white
//        } else {
//            // Fallback on earlier versions
//        }
        tabBarController.tabBar.tintColor = #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1)
//        tabBarController.tabBar.tintColor = .red
        tabBarController.tabBar.barTintColor = #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1)
        self.navigationController?.pushViewController(tabBarController, animated: true)
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
}
