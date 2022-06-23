//
//  userAdminMenu.swift
//  ExamenP3
//
//  Created by ISSC_412_2022 on 22/06/22.
//

import Cocoa

class userAdminMenu: NSViewController {

    @IBOutlet var vc: ViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    
    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
        if segue.identifier == "adminUsuariosSegue"{
            (segue.destinationController as! altaUsuario).vc = vc
        }
    }
}
