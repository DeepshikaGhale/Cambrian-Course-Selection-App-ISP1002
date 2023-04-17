//
//  Courses.swift
//  CambrianCourseSelectionApplication
//
//  Created by Deepshika Ghale on 2023-04-17.
//

import Foundation

class Course{
    var title: String
    var code: String
    var description: String
    var professorName: String
    
    init(title: String, code: String, description: String, professorName: String) {
        self.title = title
        self.code = code
        self.description = description
        self.professorName = professorName
    }
}
