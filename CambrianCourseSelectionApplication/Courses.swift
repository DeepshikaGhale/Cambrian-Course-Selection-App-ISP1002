//
//  Courses.swift
//  CambrianCourseSelectionApplication
//
//  Created by Deepshika Ghale on 2023-04-17.
//

import Foundation

class Course : NSObject, NSCoding, NSSecureCoding{
    //for security
    static var supportsSecureCoding: Bool = true
    
    func encode(with coder: NSCoder) {
        coder.encode(title, forKey: "courseTitleKey")
        coder.encode(code, forKey: "courseCodeKey")
        coder.encode(courseDescription, forKey: "courseDescriptionKey")
        coder.encode(professorName, forKey: "courseProfNameKey")
        coder.encode(isMyCourse, forKey: "isMyCourseKey")
    }
    
    required init?(coder: NSCoder) {
        title = coder.decodeObject(forKey: "courseTitleKey") as! String
        code = coder.decodeObject(forKey: "courseCodeKey") as! String
        courseDescription = coder.decodeObject(forKey: "courseDescriptionKey") as! String
        professorName = coder.decodeObject(forKey: "courseProfNameKey") as! String
        isMyCourse = coder.decodeBool(forKey: "isMyCourseKey") as Bool
    }
    
    var title: String
    var code: String
    var courseDescription: String
    var professorName: String
    var isMyCourse: Bool
    
    init(title: String, code: String,
         courseDescription: String,
         professorName: String,
         isMyCourse: Bool
    ) {
        self.title = title
        self.code = code
        self.courseDescription = courseDescription
        self.professorName = professorName
        self.isMyCourse = isMyCourse
    }
    
    
    
    
}
