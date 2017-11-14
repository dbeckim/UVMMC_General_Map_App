//
//  WebRes2ViewController.swift
//  MapAppCombined
//
//  Created by QA&Testing on 11/9/17.
//  Copyright © 2017 UVMMC Interns. All rights reserved.
//

import UIKit

class WebRes2ViewController: UIViewController {
    
    @IBOutlet weak var loadSpinner: UIActivityIndicatorView!
    
    @IBAction func backButton(_ sender: Any) {
        
        if webView.canGoBack {
            webView.goBack()
        }
    }
    @IBOutlet weak var webView: UIWebView!
    
    var url = URL(string:"https://myhealthonline.uvmmedcenter.org/Account/LogIn?ReturnUrl=%2f")
    
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
