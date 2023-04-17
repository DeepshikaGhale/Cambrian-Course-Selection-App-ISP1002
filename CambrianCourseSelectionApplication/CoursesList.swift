//
//  CoursesList.swift
//  CambrianCourseSelectionApplication
//
//  Created by Deepshika Ghale on 2023-04-17.
//

import Foundation

class CoursesList{
    var courses: [Course] = []
    var mycourses: [Course] = []
    
    init(){
        courses.append(Course(title: "IOS", code: "IOS-1002", description: "This is the course is about application development for IOS.", professorName: "Joshua"))
        courses.append(Course(title: "IOS", code: "IOS-1002", description: "This is the course is about application development for IOS.", professorName: "Joshua"))
        courses.append(Course(title: "IOS", code: "IOS-1002", description: "This is the course is about application development for IOS.", professorName: "Joshua"))
        courses.append(Course(title: "IOS", code: "IOS-1002", description: "This is the course is about application development for IOS.", professorName: "Joshua"))
        mycourses.append(Course(title: "IOS", code: "IOS-1002", description: "This is the course is about application development for IOS.", professorName: "Joshua"))
    }
    
    //drop courses from list of selected courses
    func delete(at indexPath: IndexPath)
    {
        let row = indexPath.row
        
        mycourses.remove(at: row)
        
    }
    
}

