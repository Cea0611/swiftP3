//
//  almacenMenu.swift
//  ExamenP3
//
//  Created by Cesar Elizarraraz Acosta on 23/06/22.
//

import Cocoa

class almacenMenu: NSViewController {
    
    @IBOutlet var vc: ViewController!
    @objc dynamic var Altas: [AltaModel] = []
    @objc dynamic var Productos: [ProductModel] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
        if segue.identifier == "almacenAltaESegue"{
            (segue.destinationController as! altaExistencia).vc = vc
        } else if segue.identifier == "almacenConsultaASegue"{
            (segue.destinationController as! tableAlta).vc = vc
        } else if segue.identifier == "almacenNuevoPSegue"{
            (segue.destinationController as! altaProducto).vc = vc
        } else if segue.identifier == "almacenProductosSegue"{
            (segue.destinationController as! tableProducto).vc = vc
        }
    }
}
