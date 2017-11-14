//
//  TableViewDestsViewController.swift
//  MapAppCombined
//
//  Created by QA&Testing on 9/21/17.
//  Copyright © 2017 UVMMC Interns. All rights reserved.
//

import UIKit

class TableViewDestsViewController: UITableViewController {
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBAction func controllerChanged(_ sender: Any) {
        tableView.reloadData()

    }
    
    var curr_section = 1
    
    struct Objects{
        var sectionName : String!
        var sectionObjects : [String]!
    }
    
    //  All A - Z
    
    let objectsArray1 = [Objects(sectionName: "A-Z", sectionObjects: [
        "Anesthesiology",
        "Austin Auditorium",
        "Birthing Center",
        "Breast Care Center",
        "Breast Imaging",
        "Cafe Express",
        "Children Specialty Center",
        "Community Health Resource Center",
        "Dana Medical Library",
        "Davis Auditorium",
        "Dermatology East",
        "Dermatology Outpatient Unit",
        "Dialysis Program",
        "Ear Nose and Throat",
        "Emergency Department",
        "Endoscopy",
        "Epilepsy Program",
        "Garden Atrium",
        "Gift Shop",
        "Graduate Medical Education Office",
        "Gynecology",
        "Harvest Cafe",
        "Healing Garden",
        "Hematology and Oncology Laboratory Services",
        "Hemotology and Oncology Unit",
        "Main Street Cafe",
        "Mary Fletcher Meeting Room",
        "McClure Conference Room",
        "Medical ICU",
        "Medicine Outpatient Clinic",
        "Mother-Baby Unit",
        "MRI",
        "Neonatal ICU",
        "Neurophysiology",
        "New England Federal Credit Union",
        "Nutrition Services",
        "Obstetrics",
        "Occupational Therapy",
        "Ophthalmology",
        "Patient and Family Advocacy",
        "Patient Financial Services",
        "Pediatric ICU",
        "Pediatric Unit",
        "Pharmacy",
        "Physical Therapy",
        "Psychiatry Inpatient",
        "Psychological Services",
        "Radiation Oncology",
        "Radiology and Cardiology",
        "Radiology Services",
        "Registration",
        "Sleep Lab",
        "Speech Language Pathology",
        "Spiritual Resource Center",
        "Surgery and Outpatient Procedures",
        "Surgery Outpatient Clinic - East",
        "Surgery Outpatient Clinic - Main",
        "Surgical ICU",
        "Surgical Oncology",
        "Taylor Hospitality Room",
        "University of Vermont Clinical Research Center"])]
    
    
    
    // All - By Floor
    let objectsArray2 = [Objects(sectionName: "Level L", sectionObjects: [
        
        "Harvest Cafe",
        "McClure Conference Room",
        "MRI"]),
                         
                         Objects(sectionName: "Level 1", sectionObjects: [
                            
                            "Emergency Department",
                            "Radiology and Cardiology",
                            "Spiritual Resource Center"]),
                         
                         Objects(sectionName: "Level 2", sectionObjects: [
                            
                            "Anesthesiology",
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
                            "University of Vermont Clinical Research Center"]),
                         
                         Objects(sectionName: "Level 3", sectionObjects: [
                            
                            "Community Health Resource Center",
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
                            "Taylor Hospitality Room"]),
                         
                         Objects(sectionName: "Level 4", sectionObjects: [
                            
                            "Austin Auditorium",
                            "Children Specialty Center",
                            "Dialysis Program",
                            "Ear Nose and Throat",
                            "Endoscopy",
                            "Gynecology",
                            "Hemotology and Oncology Unit",
                            "Medical ICU",
                            "Obstetrics",
                            "Psychological Services"]),
                         
                         Objects(sectionName: "Level 5", sectionObjects: [
                            
                            "Surgery Outpatient Clinic - Main",
                            "Dermatology Outpatient Unit",
                            "Epilepsy Program",
                            "Medicine Outpatient Clinic",
                            "Neurophysiology",
                            "Ophthalmology",
                            "Pediatric Unit",
                            "Sleep Lab",
                            "Surgery Outpatient Clinic - East",
                            "Surgery Outpatient Clinic - Main"]),
                         
                         
                         Objects(sectionName: "Level 7", sectionObjects: [
                            
                            "Birthing Center",
                            "Mother-Baby Unit",
                            "Neonatal ICU"])]
    
    
    
    // Dining
    let objectsArray3 = [Objects(sectionName: "Level L", sectionObjects: ["Harvest Cafe"]),
                         
                         Objects(sectionName: "Level 2", sectionObjects: ["Cafe Express"]),
                         Objects(sectionName: "Level 3", sectionObjects: ["Garden Atrium","Main Street Cafe"])
        
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sideMenu()
        
    }
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
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
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as UITableViewCell!
        
        switch (segmentedControl.selectedSegmentIndex){
            
        case 0:
            cell?.textLabel?.text = objectsArray1[indexPath.section].sectionObjects[indexPath.row]
            curr_section = 1
            
            if cell?.textLabel?.text == "Harvest Cafe" || cell?.textLabel?.text == "Cafe Express"
                || cell?.textLabel?.text == "Garden Atrium" || cell?.textLabel?.text == "Main Street Cafe"{
                
                cell?.textLabel?.textColor = UIColor(red: (244/255.0), green: (113/255.0), blue: (66/255.0), alpha: 1.0)
                
            }
            
            else{
                cell?.textLabel?.textColor = UIColor(red: (0/255.0), green: (0/255.0), blue: (0/255.0), alpha: 1.0)
            }
            
            
            
        case 1:
            cell?.textLabel?.text = objectsArray2[indexPath.section].sectionObjects[indexPath.row]
            curr_section = 2
            
            if cell?.textLabel?.text == "Harvest Cafe" || cell?.textLabel?.text == "Cafe Express"
                || cell?.textLabel?.text == "Garden Atrium" || cell?.textLabel?.text == "Main Street Cafe"{
                
                cell?.textLabel?.textColor = UIColor(red: (244/255.0), green: (113/255.0), blue: (66/255.0), alpha: 1.0)
                
            }
                
            else{
                cell?.textLabel?.textColor = UIColor(red: (0/255.0), green: (0/255.0), blue: (0/255.0), alpha: 1.0)
            }
            
            
            
            
        case 2:
            cell?.textLabel?.text = objectsArray3[indexPath.section].sectionObjects[indexPath.row]
            curr_section = 3
            
            if cell?.textLabel?.text == "Harvest Cafe" || cell?.textLabel?.text == "Cafe Express"
                || cell?.textLabel?.text == "Garden Atrium" || cell?.textLabel?.text == "Main Street Cafe"{
                
                cell?.textLabel?.textColor = UIColor(red: (244/255.0), green: (113/255.0), blue: (66/255.0), alpha: 1.0)
                
            }
                
            else{
                cell?.textLabel?.textColor = UIColor(red: (0/255.0), green: (0/255.0), blue: (0/255.0), alpha: 1.0)
            }
            
            
        default:
            break
        }
        
        cell!.textLabel?.adjustsFontSizeToFitWidth = true

        return cell!
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        var returnValue = 0
        
        switch (segmentedControl.selectedSegmentIndex){
            
        case 0:
            returnValue = objectsArray1[section].sectionObjects.count
            
            
        case 1:
            returnValue =  objectsArray2[section].sectionObjects.count
            
            
        case 2:
            returnValue = objectsArray3[section].sectionObjects.count
            
            
        default:
            break
        }
        
        return returnValue
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        (view as! UITableViewHeaderFooterView).backgroundView?.backgroundColor = UIColor(red: (42/255.0), green: (98/255.0), blue: (62/255.0), alpha: 0.9)
        
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.font = UIFont(name: "Futura", size: 22)!
        header.textLabel?.textColor = UIColor.white
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        var returnValue = 0
        
        switch (segmentedControl.selectedSegmentIndex){
            
        case 0:
            returnValue = objectsArray1.count
            
            break
            
        case 1:
            returnValue = objectsArray2.count
            
            break
            
        case 2:
            returnValue = objectsArray3.count
            
            break
            
        default:
            break
        }
        
        return returnValue
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        
        var returnSection = ""
        switch (segmentedControl.selectedSegmentIndex){
            
        case 0:
            returnSection = objectsArray1[section].sectionName
            
            
            
        case 1:
            returnSection = objectsArray2[section].sectionName
            
            
            
        case 2:
            returnSection = objectsArray3[section].sectionName
            
            
        default:
            break
        }
        
        
        return returnSection
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "main" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                
                let controller = segue.destination as! SecondViewController
                
                let backButton = UIBarButtonItem()
                backButton.title = "Back"
                navigationItem.backBarButtonItem = backButton
                
                if curr_section == 1 {
                    
                    let value = objectsArray1[indexPath.section].sectionObjects[indexPath.row]
                    controller.MyString = value
                }
                    
                else if curr_section == 2 {
                    
                    let value = objectsArray2[indexPath.section].sectionObjects[indexPath.row]
                    controller.MyString = value
                }
                    
                else{
                    
                    let value = objectsArray3[indexPath.section].sectionObjects[indexPath.row]
                    controller.MyString = value
                    
                }
                
            }
        }
    }
}
