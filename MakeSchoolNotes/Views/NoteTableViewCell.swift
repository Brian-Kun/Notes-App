//
//  NoteTableViewCell.swift
//  MakeSchoolNotes
//
//  Created by Brian Ramirez on 06/24/2015.
//  Copyright (c) 2015 Brian Ramirez. All rights reserved.
//

import Foundation
import UIKit

class NoteTableViewCell: UITableViewCell {
    
    // initialize the date formatter only once, using a static computed property
    static var dateFormatter: NSDateFormatter = {
        var formatter = NSDateFormatter()
        formatter.dateFormat = "MM/dd/yy"
        return formatter
        }()
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    var note: Note? {
        didSet {
            if let note = note, titleLabel = titleLabel, dateLabel = dateLabel {
                self.titleLabel.text = note.title
                self.dateLabel.text = NoteTableViewCell.dateFormatter.stringFromDate(note.modificationDate)
            }
        }
    }
    
}
