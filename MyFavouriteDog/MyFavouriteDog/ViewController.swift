//
//  ViewController.swift
//  MyFavouriteDog
//
//  Created by Szymon Szysz on 14.01.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import UIKit

var imageBorder = false
var themeYellow:UIColor = UIColor(red: 1.0, green: 0.926, blue: 0.531, alpha: 1.0)
var themeBlue:UIColor = UIColor(red: 0.449, green: 0.629, blue: 0.824, alpha: 1.0)

class ViewController: UIViewController {

    //MARK: - IBOutlet section
    @IBOutlet weak var imageView: UIImageView!
    
    //MARK: - Variable/Constants section
    /// Creat array for pictures
    var dogsArray = [String]()
    /// Index of array to assing image
    var indexArray = 0
    /// Save image to memmory
    let userDef = UserDefaults.standard
    
    //MARK: - View section
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        imageBorderSwitch()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        createArrayImages()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - View section
    /// Button action to scroll images to left.
    @IBAction func leftArrowButton(_ sender: Any) {
        
        if indexArray > 0 {
            
            indexArray -= 1
            let index = dogsArray[indexArray]
            let imageDogs = UIImage(named: index)
            imageView.image = imageDogs
            
        }
    }
    
    /// Button action to save images to user defaults.
    @IBAction func heartButton(_ sender: Any) {
        
        userDef.set(indexArray, forKey: "favourite")
    
    }
    
    /// Button action to scroll images to right.
    @IBAction func rightArrowButton(_ sender: Any) {
        
        if indexArray < dogsArray.count - 1 {
            
            indexArray += 1
            let index = dogsArray[indexArray]
            let imageDogs = UIImage(named: index)
            imageView.image = imageDogs
        
        }
    }
    
    //MARK: - Func section
    /// Func creat array for images assets.
    func createArrayImages() {
        
        for i in 0..<7 {
            
            dogsArray.append(String(i))
            
        }
    }
    
    func imageBorderSwitch() {
        
        if imageBorder == true {
            
            imageView.layer.borderWidth = 5.0
            imageView.layer.borderColor = UIColor.black.cgColor
            
        } else {
            
            imageView.layer.borderWidth = 0.0
            
        }
        
        imageView.layer.cornerRadius = 5.0
    }
}

