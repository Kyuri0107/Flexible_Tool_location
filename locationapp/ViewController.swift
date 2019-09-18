//
//  ViewController.swift
//  locationapp
//
//  Created by COE-009 on 18/09/19.
//  Copyright © 2019 COE-009. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    var myDataArray=["India","Australia","America","Canada","Russia","Pakistan","England","New_zeland","SouthAfrika"]
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return myDataArray.count
    }
    

    @IBOutlet weak var MyToolbar: UIToolbar!
    
    @IBOutlet weak var MyPicker: UIPickerView!
    
    @IBOutlet weak var Selectedstate: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.MyPicker.delegate=self
        self.MyPicker.isHidden=true
        self.MyToolbar.isHidden=true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

    @IBAction func BtnLocation(_ sender: Any) {
        self.MyToolbar.isHidden=false
        self.MyPicker.isHidden=false
    }
    
    @IBAction func Done(_ sender: Any) {
        self.Selectedstate.text=self.myDataArray[self.MyPicker.selectedRow(inComponent: 0)]
        self.MyPicker.isHidden=true
        self.MyToolbar.isHidden=true
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.myDataArray[row]
    }
   
}

