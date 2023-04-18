//
//  CourseDetailsViewController.swift
//  CambrianCourseSelectionApplication
//
//  Created by Deepshika Ghale on 2023-04-17.
//

import UIKit

class CourseDetailsViewController: UIViewController {
    
    var courseList = CoursesList()
    var course: Course? = nil
    var buttonName: String = "Add Course"
    var indexPath: IndexPath? = nil
    
    
    //UI elements of course details
    @IBOutlet weak var courseName: UILabel!
    
    @IBOutlet weak var professorName: UILabel!
    
    @IBOutlet weak var courseDescription: UILabel!
    
    @IBOutlet weak var courseDetailsBtnLabel: UIButton!
    
    @IBAction func saveCourse(_ sender: Any) {
        if(buttonName == "Add Course"){
            addCourse()
        }else{
            deleteCourse()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        courseDetailsBtnLabel.setTitle(buttonName, for: .normal)
        if let courseData = course{
            courseName.text = courseData.title
            professorName.text = courseData.professorName
            courseDescription.text = courseData.courseDescription
        }

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard ( course != nil)
        else{return}

    }
    
    func addCourse(){
        if let courseData = course{
            courseList.userCourses.append(courseData)
        }
    }
    
    func deleteCourse(){
        if let index = indexPath{
            courseList.delete(at: index)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
