//
//  NewNoteViewController.swift
//  MakeSchoolNotes
//
//  Created by Brian Ramirez on 06/24/2015.
//  Copyright (c) 2015 Brian Ramirez. All rights reserved.
//

import UIKit

class NewNoteViewController: UIViewController {
    
    var currentNote: Note?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if (segue.identifier == "ShowNewNote") {
            // create a new Note and hold onto it, to be able to save it later
            currentNote = Note()
            let noteViewController = segue.destinationViewController as! NoteDisplayViewController
            noteViewController.note = currentNote
            noteViewController.edit = true
        }
    }

}
