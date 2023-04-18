//
//  ViewController.swift
//  CambrianCourseSelectionApplication
//
//  Created by Deepshika Ghale on 2023-04-11.
//

import UIKit

class ViewController: UIViewController {
    
    //initialize the course list class
    var courseList : CoursesList!
    
    @IBOutlet weak var username: UILabel!
    @IBAction func viewAllCourses(_ sender: UIButton) {
        
    }
    
    @IBAction func viewMyCourses(_ sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        // adding static data to the list
        if(courseList.courses.isEmpty){
            courseList.courses.append(Course(title: "IOS", code: "IOS-1001", courseDescription: "This is the course is about application development for IOS.", professorName: "Joshua", isMyCourse: false))
            courseList.courses.append(Course(title: "DBA", code: "DBA-1000", courseDescription: "This is the course is about database.", professorName: "Samay", isMyCourse: false))
            courseList.courses.append(Course(title: "Android", code: "JAV-1003", courseDescription: "This is the course is about application development for Android.", professorName: "Graham", isMyCourse: false))
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        switch segue.identifier{
            //when the add button is pressed
        case "mycourses":
            let dst = segue.destination as! CoursesTableViewController
            dst.courseList = courseList.userCourses
            dst.typeOfList = "mycourses"
            print("my courses : \(courseList.courses.count)")
            break
            
            //when the edit button is pressed
        case "courses":
            let dst = segue.destination as! CoursesTableViewController
            dst.courseList = courseList.courses
            print("courses : \(courseList.courses.count)")
            dst.typeOfList = "courses"
            break
            
        case "profile":
            break
            
        default:
            preconditionFailure("unidentified segue ID: \(segue.identifier)")
        }
    }
    
}
