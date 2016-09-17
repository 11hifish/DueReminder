//
//  ThirdViewController.swift
//  duereminder
//
//  Created by JiangShuli on 9/17/16.
//  Copyright © 2016 SJ. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var table: UITableView!
    
    
    
    @IBOutlet weak var MyAndrerwID: UILabel!
    
    @IBOutlet weak var goBack: UIButton!
    
    @IBOutlet weak var EnterCouseNO: UITextField!
    
    let dues = DuesManager.sharedInstance
    
    var MyAndrewIDText = String()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        MyAndrerwID.text = MyAndrewIDText
        
        table.dataSource=self
        table.delegate=self
    }

    @IBOutlet weak var addCourse: UIButton!
    @IBOutlet weak var Bg3: UIButton!
    @IBAction func ResignBG(sender: AnyObject) {
        Bg3.resignFirstResponder()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dues.dueArray.count
    }
        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCellWithIdentifier("dueCell") as! DueCell
        let dueObj = dues.dueArray[indexPath.row]
        cell.courseNODisplay.text = String(dueObj.courseNO!)
        cell.courseNameDisplay.text = dueObj.courseName!
        cell.dueContentDisplay.text = dueObj.dueContent!
        cell.enrollmentStatusDisplay.text = dueObj.enrollmentStatus!
        
        return cell
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        table.reloadData()

    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 96
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        print("before segue\n")
        print(segue.destinationViewController)

        let Dest : FourthViewController = segue.destinationViewController as! FourthViewController
        
        Dest.CourseNOText = EnterCouseNO.text!
    }

}
