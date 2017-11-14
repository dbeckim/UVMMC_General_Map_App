//
//  SecondViewController.swift
//  MapApp
//
//  Created by Test Person on 7/24/17.
//  Copyright © 2017 UVMMC Interns. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class SecondViewController: UIViewController, UIScrollViewDelegate {
    
    var MyString = String();

    
    // Array to hold all destinations that have 2 maps
    let multi_2 = ["Austin Auditorium",
                   "Birthing Center",
                   "Dialysis Program",
                   "Emergency Department",
                   "Epilepsy Program",
                   "Harvest Cafe",
                   "Hemotology and Oncology Unit",
                   "McClure Conference Room",
                   "Medical ICU",
                   "Mother-Baby Unit",
                   "MRI",
                   "Neonatal ICU",
                   "Neurophysiology ",
                   "Pediatric Unit",
                   "Psychological Services",
                   "Radiology and Cardiology",
                   "Sleep Lab",
                   "Spiritual Resource Center"]
    
    // Only for multi-map destinations to hold non-level 3 end floors
    // Arrays for each level to hold contained destinations

    let level_L = ["Harvest Cafe 2",
                   "McClure Conference Room 2",
                   "MRI 2"]
    
    let level_1 = ["Emergency Department 2",
                   "Radiology and Cardiology 2",
                   "Spiritual Resource Center 2"]
    
    let level_2 = ["Anesthesiology",
                   "Breast Care Center",
                   "Breast Imaging",
                   "Cafe Express",
                   "Dana Medical Library",
                   "Davis Auditorium",
                   "Graduate Medical Education Office",
                   "Healing Garden",
                   "Hematology and Oncology Laboratory Services",
                   "New England Federal Credit Union",
                   "Occupational Therapy",
                   "Physical Therapy",
                   "Radiation Oncology",
                   "Speech Language Pathology",
                   "Surgical Oncology",
                   "University of Vermont Clinical Research Center"]
    
    
    let level_3 = ["Community Health Resource Center",
                   "Dermatology East",
                   "Garden Atrium",
                   "Gift Shop",
                   "Main Street Cafe",
                   "Mary Fletcher Meeting Room",
                   "Nutrition Services",
                   "Patient and Family Advocacy",
                   "Patient Financial Services",
                   "Pediatric ICU",
                   "Pharmacy",
                   "Psychiatry Inpatient",
                   "Radiology Services",
                   "Registration",
                   "Surgery and Outpatient Procedures",
                   "Surgical ICU",
                   "Taylor Hospitality Room"]
    
    
    let level_4 = ["Austin Auditorium 2",
                   "Children Specialty Center",
                   "Dialysis Program 2",
                   "Ear Nose and Throat",
                   "Endoscopy",
                   "Gynecology",
                   "Hemotology and Oncology Unit 2",
                   "Medical ICU 2",
                   "Obstetrics",
                   "Psychological Services 2"]
    
    
    let level_5 = ["Surgery Outpatient Clinic - Main",
                   "Surgery Outpatient Clinic - East",
                   "Dermatology Outpatient Unit",
                   "Epilepsy Program 2",
                   "Medicine Outpatient Clinic",
                   "Neurophysiology 2",
                   "Ophthalmology",
                   "Pediatric Unit 2",
                   "Sleep Lab 2",
                   "Surgery Outpatient Clinic - East"]
    
    let level_7 = ["Birthing Center 2",
                   "Mother-Baby Unit 2",
                   "Neonatal ICU 2"]
    
    

    @IBOutlet weak var levelLabel: UILabel!
    @IBOutlet weak var zoomView: UIScrollView!
    @IBOutlet weak var AnothaImageView: UIImageView!
    
    @IBOutlet weak var directions: UIButton!

    @IBOutlet weak var mapof: UILabel!
    @IBOutlet weak var btnNextMap: UIButton!
    
    @IBOutlet weak var btnPrevMap: UIButton!
    
    
    @IBAction func btnNextMap(_ sender: Any) {
        
        self.zoomView.zoomScale = 1.0

        
        AnothaImageView.image = UIImage(named: MyString)
        
        self.btnPrevMap.isHidden = false
        self.mapof.text = "Map 2/2"
        self.btnNextMap.isHidden = true
        
        
        // Set correct floor level
        
        if level_L.contains(MyString + " 2"){
            levelLabel.text = "Level L"
        }

        if level_1.contains(MyString + " 2"){
            levelLabel.text = "Level 1"
        }

        if level_2.contains(MyString + " 2"){
            levelLabel.text = "Level 2"
        }

        if level_4.contains(MyString + " 2"){
            levelLabel.text = "Level 4"
        }

        if level_5.contains(MyString + " 2"){
            levelLabel.text = "Level 5"
        }


        if level_7.contains(MyString + " 2"){
            levelLabel.text = "Level 7"
        }
    

    }
    
    @IBAction func btnPrevMap(_ sender: Any) {
        self.zoomView.zoomScale = 1.0
        
        if MyString == "Emergency Department"{
            AnothaImageView.image = UIImage(named: "West Elevators.jpg")
        }
        else{

        AnothaImageView.image = UIImage(named: "McClure Elevators.jpg")
        }
        self.btnPrevMap.isHidden = true
        self.mapof.text = "Map 1/2"
        self.btnNextMap.isHidden = false
        
        levelLabel.text = "Level 3"

        


    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let popupController = segue.destination as! PopUpViewController
        popupController.Destination = MyString
    }

    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    override func viewDidLoad() {
        
        
        
        if !multi_2.contains(MyString){
            self.btnNextMap.isHidden = true
            self.btnPrevMap.isHidden = true
            self.mapof.isHidden = true
            AnothaImageView.image = UIImage(named: MyString)
            
            
            // Set correct floor level
            
            if level_L.contains(MyString){
                levelLabel.text = "Level L"
            }
            
            if level_1.contains(MyString){
                levelLabel.text = "Level 1"
            }
            
            if level_2.contains(MyString){
                levelLabel.text = "Level 2"
            }
            
            if level_3.contains(MyString){
                levelLabel.text = "Level 3"
            }
            
            if level_4.contains(MyString){
                levelLabel.text = "Level 4"
            }
            if level_5.contains(MyString){
                levelLabel.text = "Level 5"
            }

            if level_7.contains(MyString){
                levelLabel.text = "Level 7"
            }
            
        }
        
        else{

            self.btnPrevMap.isHidden = true
            self.mapof.text = "Map 1/2"
            
            if MyString == "Emergency Department"{
                AnothaImageView.image = UIImage(named: "West Elevators.jpg")
            }
            else{
                
                AnothaImageView.image = UIImage(named: "McClure Elevators.jpg")

                
            }
            
            levelLabel.text = "Level 3"
            
            
        }
        
        super.viewDidLoad()
    
        self.zoomView.minimumZoomScale = 1.0
        self.zoomView.maximumZoomScale = 6.0
        
        navigationItem.title = MyString
    

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func viewForZooming(in zoomView: UIScrollView) -> UIView?
    {
        return self.AnothaImageView
    }
    
    

    


}
