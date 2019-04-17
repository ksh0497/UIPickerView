//
//  ViewController.swift
//  UIPickerView
//
//  Created by dit05 on 2019. 4. 17..
//  Copyright © 2019년 dit05. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    @IBOutlet var outLabel: UILabel!
    @IBOutlet var myPickerView: UIPickerView!
    var color = ["Red","Green","Blue","4","5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myPickerView.delegate = self
        myPickerView.dataSource = self
    }
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return color.count
    }
    
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return color[row]
    }

}

