//
//  FourthViewController.swift
//  duereminder
//
//  Created by JiangShuli on 9/17/16.
//  Copyright © 2016 SJ. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet weak var CourseNO: UILabel!
    var CourseNOText = String()
    
    @IBOutlet weak var CourseName: UILabel!
    var CourseNameText = String()
    
    @IBOutlet weak var EnrollmentStatus: UILabel!
    var EnrollmentStatusText = String()
    
    let man = DuesManager.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        CourseNO.text = CourseNOText
        
        
    }
    @IBAction func goBacktoThree(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func ConfirmAddCourse(sender: AnyObject) {
        let dueobjj = DueObject(courseNO: 34567, courseName: "lalal", dueContent: "lala",enrollmentStatus: "TA")
        man.dueArray.append(dueobjj)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
