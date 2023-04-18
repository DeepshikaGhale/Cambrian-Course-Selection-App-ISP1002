//
//  CoursesList.swift
//  CambrianCourseSelectionApplication
//
//  Created by Deepshika Ghale on 2023-04-17.
//

import Foundation

class CoursesList{
    var courses: [Course] = []
    var userCourses: [Course] = []
    
    //for all courses
    var saveAllCoursesUrl : URL = {
        //lists all the directories
        let documentationDirectories = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let documentDirectory = documentationDirectories.first!
        return documentDirectory.appending(path: "allCourses.archive")
    }()
    //for user courses
    var saveUserCourseUrl : URL = {
        //lists all the directories
        let documentationDirectories = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let documentDirectory = documentationDirectories.first!
        return documentDirectory.appending(path: "userCourses.archive")
    }()
    init(){
        
        let data = try? Data(contentsOf: saveAllCoursesUrl)
        if data == nil{
            return
        }
        courses = try! NSKeyedUnarchiver.unarchivedArrayOfObjects(ofClass: Course.self, from: data!)!
        
        let userData = try? Data(contentsOf: saveUserCourseUrl)
        if userData == nil{
            return
        }
        userCourses = try! NSKeyedUnarchiver.unarchivedArrayOfObjects(ofClass: Course.self, from: data!)!
    }
    
    //drop courses from list of selected courses
    func delete(at indexPath: IndexPath)
    {
        let row = indexPath.row
        
        userCourses.remove(at: row)
    }
    
    //local storage function
    func saveAllCoursesList(){
        //for unhandled exception
        do{
            let encodedAllCourseList =  try NSKeyedArchiver.archivedData(withRootObject: courses, requiringSecureCoding: true)
            try encodedAllCourseList.write(to: saveAllCoursesUrl) //TODO: make URL to save the data to given local storage
        }catch let error{
            preconditionFailure(error.localizedDescription)
        }
    }
    
    func saveUserCourseList(){
        //for unhandled exception
        do{
            let encodedAllCourseList =  try NSKeyedArchiver.archivedData(withRootObject: userCourses, requiringSecureCoding: true)
            try encodedAllCourseList.write(to: saveUserCourseUrl) //TODO: make URL to save the data to given local storage
        }catch let error{
            preconditionFailure(error.localizedDescription)
        }
    }
    
}

