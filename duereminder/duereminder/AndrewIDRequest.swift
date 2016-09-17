//
//  AndrewIDRequest.swift
//  duereminder
//
//  Created by JiangShuli on 9/17/16.
//  Copyright © 2016 SJ. All rights reserved.
//

import UIKit

class AndrewIDRequest: NSObject {
    var AndrewID: String?
    var CourseNO: String?
    
    init(AndrewID: String, CourseNO: String)
    {
        super.init()
        self.AndrewID = AndrewID
        self.CourseNO = CourseNO
    }
    
    func Request() -> String {
        return "fun=getonedue&andrewid="+AndrewID!+"&coursecode="+CourseNO!
    }
}
