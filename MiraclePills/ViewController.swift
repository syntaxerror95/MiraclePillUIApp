//
//  ViewController.swift
//  MiraclePills
//
//  Created by Sahadev Tandur on 20/08/17.
//  Copyright © 2017 Sahadev Tandur. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var StatePicker: UIPickerView!
    
    @IBOutlet weak var StateBtn: UIButton!
    
    @IBOutlet weak var CountryLb: UILabel!
    
    @IBOutlet weak var CountryTxtFld: UITextField!
    
    @IBOutlet weak var ZipLb: UILabel!
    
    @IBOutlet weak var ZipTxtFld: UITextField!
    
    @IBOutlet weak var SuccessImg: UIImageView!
    
    @IBOutlet weak var BuyBtn: UIButton!
    
    @IBOutlet weak var PillImg: UIImageView!
    
    @IBOutlet weak var PillTxt: UILabel!
    
    @IBOutlet weak var Div: UIView!
    
    @IBOutlet weak var PriceTxt: UILabel!
    
    @IBOutlet weak var NameLb: UILabel!
    
    @IBOutlet weak var NameTxtFld: UITextField!
    
    @IBOutlet weak var StreetLb: UILabel!
    
    @IBOutlet weak var StreetTxt: UITextField!
    
    @IBOutlet weak var CityLb: UILabel!
    
    @IBOutlet weak var CityTxtFld: UITextField!
    
    @IBOutlet weak var StateLb: UILabel!
   
    let states: [String] = ["Karanataka","Maharastra","TamilNadu","Kerala","AndraPradesh","UttarPradesh","JammuAndKashmir","Rajasthan","Gujarat","ArunachalPredesh"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        StatePicker.dataSource = self
        StatePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func OnStateBtnClick(_ sender: Any) {
        StatePicker.isHidden = false
        CountryLb.isHidden = true
        CountryTxtFld.isHidden = true
        ZipLb.isHidden = true
        ZipTxtFld.isHidden = true
    }

    @IBAction func OnBuyBtnClick(_ sender: Any) {
        PillImg.isHidden = true
        PillTxt.isHidden = true
        PriceTxt.isHidden = true
        Div.isHidden = true
        NameLb.isHidden = true
        NameTxtFld.isHidden = true
        StreetLb.isHidden = true
        StreetTxt.isHidden = true
        CityLb.isHidden = true
        CityTxtFld.isHidden = true
        StateLb.isHidden = true
        StateBtn.isHidden = true
        StatePicker.isHidden = true
        CountryTxtFld.isHidden = true
        CountryLb.isHidden = true
        ZipTxtFld.isHidden = true
        ZipLb.isHidden = true
        BuyBtn.isHidden = true
        SuccessImg.isHidden = false
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states.sorted()[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        StateBtn.setTitle(states.sorted()[row], for: UIControlState.normal)
        StatePicker.isHidden = true
        CountryLb.isHidden = false
        CountryTxtFld.isHidden = false
        ZipLb.isHidden = false
        ZipTxtFld.isHidden = false
    }
}

