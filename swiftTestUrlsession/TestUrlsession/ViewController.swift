//
//  ViewController.swift
//  TestUrlsession
//
//  Created by Haohan Shi on 9/17/16.
//  Copyright © 2016 Haohan Shi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func httprequest(sender: AnyObject) {
        let testurl = String("http://10.0.0.233:8000?")
        let testparam = String("fun=addcourse&andrewid=haohans&coursecode=21259&role=Instructor")
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
            }
        });
        // do whatever you need with the task e.g. run
        task.resume()
    }
    
    @IBAction func adduser(sender: AnyObject) {
        let testurl = String("http://10.0.0.233:8000?")
        let testparam = String("fun=adduser&andrewid=haohans&username=Haohan-Shi")
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
            }
        });
        // do whatever you need with the task e.g. run
        task.resume()
    }
    @IBAction func getcourse(sender: AnyObject) {
        let testurl = String("http://10.0.0.233:8000?")
        let testparam = String("fun=adddue&andrewid=haohans&coursecode=21259&duedate=09-17-17-00&hwname=written1&handintype=recitation")
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
            }
        });
        // do whatever you need with the task e.g. run
        task.resume()
    }
    
    @IBAction func getdue(sender: AnyObject) {
        let testurl = String("http://10.0.0.233:8000?")
        let testparam = String("fun=getonedue&andrewid=haohans&coursecode=21259")
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
            }
        });
        // do whatever you need with the task e.g. run
        task.resume()
    }
    @IBAction func addanothercourse(sender: AnyObject) {
        let testurl = String("http://10.0.0.233:8000?")
        let testparam = String("fun=addcourse&andrewid=haohans&coursecode=15112&role=Instructor")
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
            }
        });
        // do whatever you need with the task e.g. run
        task.resume()
    }
    @IBAction func addanotherdue(sender: AnyObject) {
        let testurl = String("http://10.0.0.233:8000?")
        let testparam = String("fun=adddue&andrewid=haohans&coursecode=15112&duedate=09-25-23-59&hwname=tetris&handintype=autolab")
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
            }
        });
        // do whatever you need with the task e.g. run
        task.resume()
    }
    @IBAction func getanotherdue(sender: AnyObject) {
        let testurl = String("http://10.0.0.233:8000?")
        let testparam = String("fun=getonedue&andrewid=haohans&coursecode=15112")
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
            }
        });
        // do whatever you need with the task e.g. run
        task.resume()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

