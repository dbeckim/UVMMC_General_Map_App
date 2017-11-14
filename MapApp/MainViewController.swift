//
//  MainViewController.swift
//  MapAppCombined
//
//  Created by QA&Testing on 11/9/17.
//  Copyright © 2017 UVMMC Interns. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBAction func btnPhone(_ sender: Any) {
        
        
            // 
            
            guard let number = URL(string: "telprompt://8028470000") else { return }
            if #available(iOS 10.0, *) {
                
                let application:UIApplication = UIApplication.shared
                if (application.canOpenURL(number)) {
                    let alertController = UIAlertController(title: "Call UVMMC Info Desk?", message: "802-847-0000", preferredStyle: .alert)
                    let yesPressed = UIAlertAction(title: "Yes", style: .default, handler: { (action) in
                        UIApplication.shared.open(number)
                    })
                    let noPressed = UIAlertAction(title: "No", style: .default, handler: { (action) in
                        
                    })
                    alertController.addAction(yesPressed)
                    alertController.addAction(noPressed)
                    present(alertController, animated: true, completion: nil)
                }
                
                
                } else {
                
                let application:UIApplication = UIApplication.shared
                if (application.canOpenURL(number)) {
                    let alertController = UIAlertController(title: "Call UVMMC Info Desk?", message: "802-847-0000", preferredStyle: .alert)
                    let yesPressed = UIAlertAction(title: "Yes", style: .default, handler: { (action) in
                        UIApplication.shared.openURL(number)
                    })
                    let noPressed = UIAlertAction(title: "No", style: .default, handler: { (action) in
                        
                    })
                    alertController.addAction(yesPressed)
                    alertController.addAction(noPressed)
                    present(alertController, animated: true, completion: nil)
                }
            }
            
        }
    
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sideMenu()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func sideMenu(){
        
        if revealViewController() != nil{
            menuButton.target = revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 275
            revealViewController().rightViewRevealWidth = 275
            
            
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        
        
    }



}
