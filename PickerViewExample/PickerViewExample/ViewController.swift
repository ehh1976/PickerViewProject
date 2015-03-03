//
//  ViewController.swift
//  PickerViewExample
//
//  Created by eh on 3/3/15.
//  Copyright (c) 2015 eh. All rights reserved.
//

import UIKit
struct NamedColor{
    var name: String
    var color: UIColor
    }

class ViewController: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate {
    @IBOutlet var pickerData: UIPickerView!
    
    let colors = [
        NamedColor (name: "red", color: UIColor.redColor()),
        NamedColor (name: "blue", color: UIColor.blueColor()),
        NamedColor (name: "gray", color: UIColor.grayColor()),
        NamedColor (name: "green", color: UIColor.greenColor())
    ]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pickerData.delegate = self
        pickerData.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return colors[row].name
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.view.backgroundColor = colors[row].color
    }
    
//    func pickerView(pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
//        let titleData = colors[row].name
//        var myTitle = NSAttributedString(string: titleData, attributes: [NSFontAttributeName:UIFont(name: "Georgia", size: 15.0)!,NSForegroundColorAttributeName:colors[row].color])
//        return myTitle
//    }
}

