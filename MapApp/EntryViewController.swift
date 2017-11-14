//
//  EntryViewController.swift
//  MapAppCombined
//
//  Created by QA&Testing on 9/5/17.
//  Copyright © 2017 UVMMC Interns. All rights reserved.
//

import UIKit

class EntryViewController: UIViewController {

    @IBAction func btnPhone(_ sender: Any) {
        
        // 
        
        guard let number = URL(string: "telprompt://8028470000") else { return }
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(number)
        } else {
            // Fallback on earlier versions
            UIApplication.shared.openURL(number)
        }
        
    }
    
    @IBAction func btnWebsite(_ sender: Any) {
        
        if let url = URL(string: "https://www.uvmhealth.org/medcenter/pages/default.aspx"), UIApplication.shared.canOpenURL(url){
        
            if #available(iOS 10, *) {
            UIApplication.shared.open(url)
            } else {
                UIApplication.shared.openURL(url)
        }


        
        
        }
    }
    @IBAction func btnMyHealthOnline(_ sender: Any) {
        
        if let url = URL(string: "https://myhealthonline.uvmmedcenter.org/Account/LogIn?ReturnUrl=%2f"), UIApplication.shared.canOpenURL(url){
            
            if #available(iOS 10, *) {
                UIApplication.shared.open(url)
            } else {
                UIApplication.shared.openURL(url)
            }
            
            
        }
        
        
    }

    @IBAction func btnDining(_ sender: Any) {
        
        if let url = URL(string: "https://www.uvmhealth.org/medcenter/Pages/Departments-and-Programs/Dining-Services/Menus-and-Dining-Locations.aspx"), UIApplication.shared.canOpenURL(url){
            
            if #available(iOS 10, *) {
                UIApplication.shared.open(url)
            } else {
                UIApplication.shared.openURL(url)
            }
            
            
        }
        
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Hide the navigation bar on the this view controller
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Show the navigation bar on other view controllers
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
