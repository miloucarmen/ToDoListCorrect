//
//  ToDoCell.swift
//  ToDoList
//
//  Created by Gebruiker on 14-05-18.
//  Copyright © 2018 Gebruiker. All rights reserved.
//

import Foundation
import UIKit

@objc protocol ToDoCellDelegate: class {
    func checkmarkTapped(sender: ToDoCell)
}

class ToDoCell: UITableViewCell {
    var delegate: ToDoCellDelegate?
    
    // Outlets made

    @IBOutlet weak var isCompleteButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func completeButtonTapped() {
        delegate?.checkmarkTapped(sender: self)
      
    }
    
    // function for when button is tapped

}
