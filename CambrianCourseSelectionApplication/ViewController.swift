//
//  ViewController.swift
//  CambrianCourseSelectionApplication
//
//  Created by Deepshika Ghale on 2023-04-11.
//

import UIKit

class ViewController: UIViewController {
    
    //initialize the course list class
    var courseList = CoursesList()
    
    @IBOutlet weak var username: UILabel!
    @IBAction func viewAllCourses(_ sender: UIButton) {
        
    }
    
    @IBAction func viewMyCourses(_ sender: UIButton) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        switch segue.identifier{
            //when the add button is pressed
        case "mycourses":
            let dst = segue.destination as! CoursesTableViewController
            dst.listOfCourses = courseList.mycourses
            dst.typeOfList = "mycourses"
            print("my courses : \(courseList.mycourses.count)")
            break
            
            //when the edit button is pressed
        case "courses":
            let dst = segue.destination as! CoursesTableViewController
            dst.listOfCourses = courseList.courses
            print("courses : \(courseList.courses.count)")
            dst.typeOfList = "courses"
            break
            
        default:
            preconditionFailure("unidentified segue ID: \(segue.identifier)")
        }
    }
}

