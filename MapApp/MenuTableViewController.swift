//
//  MenuTableViewController.swift
//  MapAppCombined
//
//  Created by QA&Testing on 11/9/17.
//  Copyright © 2017 UVMMC Interns. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView()
        
        
        tableView.layer.borderWidth = 2.0


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 50.0;//Choose your custom row height
    }
    

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        
//        if segue.identifier == "home_web" {
//            
//            let controller = segue.destination as! WebResViewController
//
//            controller.url = URL(string: "https://www.uvmhealth.org/medcenter/pages/default.aspx")
//
//            
//            
//            
//            
//        }
//    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            
        } else if indexPath.row == 1 {
            //configure action when tap cell 1
        }
    
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
