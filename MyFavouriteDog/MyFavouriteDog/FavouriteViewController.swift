//
//  FavouriteViewController.swift
//  MyFavouriteDog
//
//  Created by Szymon Szysz on 14.01.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import UIKit

class FavouriteViewController: UIViewController {

    //MARK: - IBOutlet section
    @IBOutlet weak var favouriteImageView: UIImageView!
    
    //MARK: - Constans section
    let userDef = UserDefaults.standard
    
    //MARK: - View section
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        saveFavouritePicture()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - Func section
    func saveFavouritePicture() {
        
        let indexSaved = userDef.integer(forKey: "favourite")
        let imageName = "\(indexSaved)"
        let image = UIImage.init(named: imageName)
        favouriteImageView.image = image
        
    }

}
