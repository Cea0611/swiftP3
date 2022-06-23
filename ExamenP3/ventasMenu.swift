//
//  ventasMenu.swift
//  ExamenP3
//
//  Created by Cesar Elizarraraz Acosta on 23/06/22.
//

import Cocoa

class ventasMenu: NSViewController {

    @IBOutlet var vc: ViewController!
    @objc dynamic var Ventas: [VentaModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
        if segue.identifier == "vendeodresConsultaSegue"{
            (segue.destinationController as! altaVenta).vc = vc
        } else if segue.identifier == "vendedoresConsultaSegue"{
            (segue.destinationController as! tableVenta).vc = vc
        }
        
    }
}
