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

    @IBAction func SentRequest(sender: AnyObject) {
        let AndrewiDSend: String? = MyAndrewIDText
        let CourseNOSned: String? = EnterCouseNO.text
        let requestContent = AndrewIDRequest.init(AndrewID: AndrewiDSend!, CourseNO:CourseNOSned!)
        let testurl = String("http://128.237.183.206:8000?")
        let testparam = requestContent.Request()
        let finalurl = testurl+testparam
        let url = NSURL(string: finalurl)
        let request = NSURLRequest(URL: url!)
        let config = NSURLSessionConfiguration.defaultSessionConfiguration()
        let session = NSURLSession(configuration: config)

        let task = session.dataTaskWithRequest(request, completionHandler: {(data, response, error) in
            if let error = error {
                print(error)
                return }
            // Parse JSON data
            if let data = data {
                
                let dataString = NSString(data: data, encoding: NSUTF8StringEncoding)
                let convertdata = dataString as! String
                let stringArr = convertdata.characters.split{$0 == ","}.map(String.init)
                print(stringArr)
                //parse received strings:
                let gotCourseName = stringArr[0]
                let gotDue = stringArr[1]
                let parsedStringArr = gotDue.characters.split{$0 == "-"}.map(String.init)
                let dueContentString: String? = parsedStringArr[0]+"/"+parsedStringArr[1]+" "+parsedStringArr[2]+":"+parsedStringArr[3]+"  HW: "+parsedStringArr[4]+"  Handin: "+parsedStringArr[5]
                self.dues.dueArray.append(DueObject.init(courseNO: CourseNOSned!, courseName: gotCourseName, dueContent: dueContentString!, enrollmentStatus: "Student"))
                NSNotificationCenter.defaultCenter().postNotificationName("dataDidArrive", object: nil)
            }
        });
        // do whatever you need with the task e.g. run
        task.resume()
        
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

        print(segue.destinationViewController)

        let Dest : FourthViewController = segue.destinationViewController as! FourthViewController
        
        Dest.CourseNOText = EnterCouseNO.text!
    }

}
