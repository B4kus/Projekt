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
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    //MAKR: - Constans Seciton
    let userDef = UserDefaults.standard
    
    //MARK: - View Section
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        themeColorChange()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - IBAction section
    /// Action for changing the color of application.
    @IBAction func segmentedController(_ sender: Any) {
        
       let index = segmentedControl.selectedSegmentIndex
        userDef.set(index, forKey: "theme")
        
        if index == 0 {
            
            view.backgroundColor = themeYellow
            
        } else {
            
            view.backgroundColor = themeBlue
        }
    }
    
    /// Action for switch on and off border around image
    @IBAction func switchBorder(_ sender: Any) {
        
        if switchButton.isOn {
            
           imageBorder = true
            
        } else {
            
            imageBorder = false
            
        }
    }

    //MARK: - Func section
    func themeColorChange() {
        
        let themeValue = userDef.integer(forKey: "theme")
        if themeValue == 0 {
            
            view.backgroundColor = themeYellow
            
        }else{
            
            view.backgroundColor = themeBlue

        }
    }
}
