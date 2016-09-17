//
//  DueObject.swift
//  duereminder
//
//  Created by JiangShuli on 9/17/16.
//  Copyright © 2016 SJ. All rights reserved.
//

import UIKit

class DueObject: NSObject {
    var courseNO: String?
    var courseName: String?
    var dueContent: String?
    var enrollmentStatus: String?
    
    init(courseNO: String, courseName: String, dueContent: String, enrollmentStatus: String) {
        super.init()
        self.courseNO = courseNO
        self.courseName = courseName
        self.dueContent = dueContent
        self.enrollmentStatus = enrollmentStatus
    }
}
