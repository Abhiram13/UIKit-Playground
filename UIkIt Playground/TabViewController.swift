//
//  TabViewController.swift
//  UIkIt Playground
//
//  Created by Abhiram Nagadi on 28/12/22.
//

import Foundation;
import UIKit;

class TabBarController: UITabBarController {
    override func viewDidLoad() {
        self.viewDidLoad();                
        
        let home: ViewController = ViewController();
        home.title = "Home";
        
        self.setViewControllers([home], animated: false);
    }
}
