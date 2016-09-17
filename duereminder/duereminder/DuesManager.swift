//
//  DuesManager.swift
//  duereminder
//
//  Created by JiangShuli on 9/17/16.
//  Copyright © 2016 SJ. All rights reserved.
//

import UIKit

class DuesManager: NSObject {
    static let sharedInstance = DuesManager()
    
    var dueArray = [DueObject]()
    override init() {
        super.init()
//        let due1 = DueObject(courseNO: 12345, courseName: "haha", dueContent: "none", enrollmentStatus: "Student")
//        let due2 = DueObject(courseNO: 54632, courseName: "meow", dueContent: "none",enrollmentStatus: "Student")
//        dueArray.append(due1)
//        dueArray.append(due2)
    }

}
