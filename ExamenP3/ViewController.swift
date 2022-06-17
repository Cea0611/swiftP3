//
//  ViewController.swift
//  ExamenP3
//
//  Created by ISSC_412_2022 on 09/06/22.
//

import Cocoa

class ViewController: NSViewController {
    let admin:String = "admin"
    let adminP:String = "admin"
    @IBOutlet weak var mail: NSTextField!
    @IBOutlet weak var password: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func login(_ sender: Any) {
        if mail.stringValue == admin && password.stringValue == adminP{
            performSegue(withIdentifier: "loginAdminSegue", sender: self)
        }
    }
    /*override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
        
        /*if segue.identifier == "showSegue"{
            (segue.destinationController as! tabla).person = person
            (segue.destinationController as! tabla).vcTabla = self
        } else if (segue.identifier == "addSegue"){
            (segue.destinationController as! agregar).vc = self
        }
        */
    }*/
}

