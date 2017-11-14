//
//  ViewController.swift
//  MapApp
//
//  Created by Test Person on 7/18/17.
//  Copyright © 2017 UVMMC Interns. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    //MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var hospitalLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var floorMenuOptions: UISegmentedControl!
   
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var zoomView: UIScrollView!
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    //MARK: Actions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sideMenu()
        
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.title = "Campus Map"

        
        self.zoomView.minimumZoomScale = 1.0
        self.zoomView.maximumZoomScale = 6.0
        
        photoImageView.image = UIImage(named: "Campus");
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    func viewForZooming(in zoomView: UIScrollView) -> UIView?
    {
        return self.photoImageView
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
    
    
    @IBAction func selectImage(_ sender: UITapGestureRecognizer) {
    }
    @IBAction func setDefaultLabelText(_ sender: UIButton){
       hospitalLabel.text = "Default Text"
    }
    
    @IBAction func indexChanged(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex
        {

        case 0:
            navigationItem.title = "Campus";
            photoImageView.image = UIImage(named: "Campus");
            self.zoomView.zoomScale = 1.0

        case 1:
            navigationItem.title = "Level L";
            photoImageView.image = UIImage(named: "L");
            self.zoomView.zoomScale = 1.0


        case 2:
            navigationItem.title = "Level 1";
            photoImageView.image = UIImage(named: "L1");
            self.zoomView.zoomScale = 1.0


        case 3:
            navigationItem.title = "Level 2";
            photoImageView.image = UIImage(named: "L2");
            self.zoomView.zoomScale = 1.0


        case 4:
            navigationItem.title = "Level 3";
            photoImageView.image = UIImage(named: "L3");
            self.zoomView.zoomScale = 1.0


        case 5:
            navigationItem.title = "Level 4";
            photoImageView.image = UIImage(named: "L4");
            self.zoomView.zoomScale = 1.0

        case 6:
            navigationItem.title = "Level 5";
            photoImageView.image = UIImage(named: "L5");
            self.zoomView.zoomScale = 1.0

        case 7:
            navigationItem.title = "Level 6";
            photoImageView.image = UIImage(named: "L6");
            self.zoomView.zoomScale = 1.0

        case 8:
            navigationItem.title = "Level 7";
            photoImageView.image = UIImage(named: "L7");
            self.zoomView.zoomScale = 1.0

        default:
            break
        }
    }
    
    
}
