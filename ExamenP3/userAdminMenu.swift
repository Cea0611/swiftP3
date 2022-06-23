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
        //	print(vc.Usuarios.count)
    }
    
    
    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
        if segue.identifier == "altasUsersSegue"{
            (segue.destinationController as! altaUsuario).vc = vc
        } else if segue.identifier == "tableUsersSegue" {
            (segue.destinationController as! tableUsers).vc = vc
            
        }
    }
}
