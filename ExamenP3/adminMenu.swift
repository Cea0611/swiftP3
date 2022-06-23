//
//  adminMenu.swift
//  ExamenP3
//
//  Created by ISSC_412_2022 on 22/06/22.
//

import Cocoa

class adminMenu: NSViewController {

    @IBOutlet var vc: ViewController!
    @objc dynamic var Ventas: [VentaModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    @IBAction func back(_ sender: Any) {
        performSegue(withIdentifier: "adminBackSegue", sender: self)
    }
    
    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
        if segue.identifier == "adminUsuariosSegue"{
            (segue.destinationController as! userAdminMenu).vc = vc
        } else if segue.identifier == "adminVentasSegue"{
            
            (segue.destinationController as! ventasMenu).vc = vc
        }
        
    }
}
