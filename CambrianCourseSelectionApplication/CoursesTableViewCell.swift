//
//  CoursesTableViewCell.swift
//  CambrianCourseSelectionApplication
//
//  Created by Deepshika Ghale on 2023-04-17.
//

import UIKit

class CoursesTableViewCell: UITableViewCell {

    
    @IBOutlet weak var courseName: UILabel!
    
    @IBOutlet weak var courseCode: UILabel!
    
    @IBOutlet weak var myCourseName: UILabel!
    
    @IBOutlet weak var myCourseCode: UILabel!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
