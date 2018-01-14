//
//  ViewController.swift
//  MyFavouriteDog
//
//  Created by Szymon Szysz on 14.01.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - IBOutlet section
    @IBOutlet weak var imageView: UIImageView!
    
    //MARK: - Variable/Constants section
    var dogsArray = [String]()
    var indexArray = 0
    let userDef = UserDefaults.standard
    
    
    //MARK: - View section
    override func viewDidLoad() {
        super.viewDidLoad()
      
        createArrayImages()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - View section
    @IBAction func leftArrowButton(_ sender: Any) {
        
        if indexArray > 0 {
            
            indexArray -= 1
            let index = dogsArray[indexArray]
            let imageDogs = UIImage(named: index)
            imageView.image = imageDogs
            
        }
    }
    
    @IBAction func heartButton(_ sender: Any) {
        
        userDef.set(indexArray, forKey: "favourite")
        
    }
    
    @IBAction func rightArrowButton(_ sender: Any) {
        
        if indexArray < dogsArray.count - 1 {
            
            indexArray += 1
            let index = dogsArray[indexArray]
            let imageDogs = UIImage(named: index)
            imageView.image = imageDogs
        
        }
    }
    
    //MARK: - Func section
    
    func createArrayImages() {
        
        for i in 0..<7 {
            
            dogsArray.append(String(i))
            
        }
    }
}

