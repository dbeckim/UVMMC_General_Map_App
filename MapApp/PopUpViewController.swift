//
//  PopUpViewController.swift
//  MapApp
//
//  Created by IS Web on 7/26/17.
//  Copyright © 2017 UVMMC Interns. All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController {
    
    var Destination = String()
    
    
    @IBOutlet weak var PopUpImage: UIImageView!
    
    
    @IBOutlet weak var popUpView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.popUpView.layer.borderWidth = 3
        self.popUpView.layer.borderColor = UIColor(red:222/255, green:225/255, blue:227/255,alpha:1.0).cgColor
        
        
        PopUpImage.image = UIImage(named: Destination + " Dir")


        
        //        if Destination == "Pediatric ICU"{
        //            PopUpImage.image = UIImage(named:"picuDir")
        //        }
        //
        //        if Destination == ""{
        //            PopUpImage.image = UIImage(named:"picuDir")
        //        }
        
        
        
        popUpView.layer.cornerRadius = 10
        popUpView.layer.masksToBounds = true
        
    }
    
    @IBAction func closeButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
}

