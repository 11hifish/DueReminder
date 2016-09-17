//
//  SecondViewController.swift
//  duereminder
//
//  Created by JiangShuli on 9/17/16.
//  Copyright © 2016 SJ. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var secondBg: UIButton!
    @IBAction func QuitKeyboard(sender: AnyObject) {
        nameText.resignFirstResponder()
        andrewidText.resignFirstResponder()
        Picker.resignFirstResponder()
    }
    
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var andrewidText: UITextField!
    @IBOutlet weak var Picker: UIPickerView!
    var OPtns = ["Freshmen","Sophomore","Junior","Senior","Senior5+"]
    @IBOutlet weak var LogMeIn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        Picker.delegate=self
        Picker.dataSource=self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return OPtns[row]
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return OPtns.count
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
