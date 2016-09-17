//
//  FourthViewController.swift
//  duereminder
//
//  Created by JiangShuli on 9/17/16.
//  Copyright © 2016 SJ. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var Status = ["Student","Instructor"]

    @IBOutlet weak var CourseNO: UILabel!
    var CourseNOText = String()
    
    @IBOutlet weak var CourseName: UILabel!
    var CourseNameText = String()
    
    @IBOutlet weak var enrollmentStatus: UIPickerView!
    
    
    let man = DuesManager.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        CourseNO.text = CourseNOText
        
        enrollmentStatus.delegate=self
        enrollmentStatus.dataSource=self
        
        print("before the array")
        
        print(man.dueArray)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(didGetData), name: "dataDidArrive", object: nil)
        
        
    }
    
    func didGetData(){
        
        dispatch_async(dispatch_get_main_queue()) {
            self.CourseNameText = self.man.dueArray[self.man.dueArray.count-1].courseName!
            self.CourseName.text = self.CourseNameText
        }
        
        
    }
        
    @IBAction func goBacktoThree(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func ConfirmAddCourse(sender: AnyObject) {
//        let dueobjj = DueObject(courseNO: 12345, courseName: "", dueContent: "",enrollmentStatus: "TA")
//        man.dueArray.append(dueobjj)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Status[row]
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Status.count
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
