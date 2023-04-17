//
//  CoursesList.swift
//  CambrianCourseSelectionApplication
//
//  Created by Deepshika Ghale on 2023-04-17.
//

import Foundation

class CoursesList{
    var courses: [Course] = []
    
    init(){
        courses.append(Course(title: "IOS", code: "IOS-1002", description: "This is the course is about application development for IOS.", professorName: "Joshua"))
        courses.append(Course(title: "IOS", code: "IOS-1002", description: "This is the course is about application development for IOS.", professorName: "Joshua"))
        courses.append(Course(title: "IOS", code: "IOS-1002", description: "This is the course is about application development for IOS.", professorName: "Joshua"))
        courses.append(Course(title: "IOS", code: "IOS-1002", description: "This is the course is about application development for IOS.", professorName: "Joshua"))
    }
    
    func delete(at indexPath: IndexPath)
    {
        let row = indexPath.row
        
        courses.remove(at: row)
        
    }
    
    func move (from fromIndexPath: IndexPath, to toIndexPath: IndexPath){
        let tmp = courses[fromIndexPath.row]
        
        delete(at: fromIndexPath)
        
        courses.insert(tmp, at: toIndexPath.row)
    }
    
}

