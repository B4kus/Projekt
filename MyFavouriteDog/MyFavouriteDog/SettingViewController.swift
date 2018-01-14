//
//  SettingViewController.swift
//  MyFavouriteDog
//
//  Created by Szymon Szysz on 14.01.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {
    
    //MAKR: - IBOutlet Seciton
    @IBOutlet weak var switchButton: UISwitch!
    
    //MAKR: - Constans Seciton
    let userDef = UserDefaults.standard
    
    
    //MARK: - View Section
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - IBAction section
    @IBAction func segmentedController(_ sender: Any) {
        
        
    }
    
    @IBAction func switchBorder(_ sender: Any) {
        
        if switchButton.isOn {
            
           imageBorder = true
            
        } else {
            
            imageBorder = false
            
        }
    }
}
