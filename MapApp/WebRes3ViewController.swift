//
//  WebRes3ViewController.swift
//  MapAppCombined
//
//  Created by QA&Testing on 11/9/17.
//  Copyright © 2017 UVMMC Interns. All rights reserved.
//

import UIKit

class WebRes3ViewController: UIViewController {
    
    @IBOutlet weak var loadSpinner: UIActivityIndicatorView!
    
    @IBAction func backButton(_ sender: Any) {
        
        if webView.canGoBack {
            webView.goBack()
        }
    }
    @IBOutlet weak var webView: UIWebView!
    
    var url = URL(string:"https://www.uvmhealth.org/medcenter/Pages/Departments-and-Programs/Dining-Services/Menus-and-Dining-Locations.aspx")
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        sideMenu()
        
        webView.scalesPageToFit = true
        
        
        webView.loadRequest(URLRequest(url:url!))
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidStartLoad(_ : UIWebView) {
        loadSpinner.startAnimating()
    }
    
    func webViewDidFinishLoad(_ : UIWebView) {
        loadSpinner.stopAnimating()
        loadSpinner.isHidden = true
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
