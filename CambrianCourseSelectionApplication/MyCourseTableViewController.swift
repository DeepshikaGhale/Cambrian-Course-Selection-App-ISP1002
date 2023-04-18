//
//  MyCourseTableViewController.swift
//  CambrianCourseSelectionApplication
//
//  Created by Deepshika Ghale on 2023-04-17.
//

import UIKit

class MyCourseTableViewController: UITableViewController {
    
    var courseList : [Course] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button inthe navigation bar for this view controller.
         //self.navigationItem.rightBarButtonItem = self.editButtonItem
//        self.navigationItem.leftBarButtonItem = self.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return courseList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "courseCell", for: indexPath) as! CoursesTableViewCell

         //Configure the cell...
        let row = indexPath.row
        
        cell.courseName.text = courseList[row].title
        cell.courseCode.text = courseList[row].code

        return cell
    }
    
    override func tableView(_ tableView: UITableView,
               heightForRowAt indexPath: IndexPath) -> CGFloat {
       //set the height of the cell
       return 80
    }

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
//            courseList.delete(at: indexPath)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
//        courseList.move(from: fromIndexPath, to: to)
    }

    
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        switch segue.identifier{
            //when the add button is pressed
        case "details":
            let dst = segue.destination as! CourseDetailsViewController
            let currentRow = tableView.indexPathForSelectedRow!
            let index = currentRow.row
            dst.course = courseList[index]
            dst.buttonName = "Drop Course"
            break
        
        case "add_course":
            let dst = segue.destination as! CoursesTableViewController
            break
            
        default:
            preconditionFailure("unidentified segue ID: \(segue.identifier)")
        }
    }

}
