//
//  tableProducto.swift
//  ExamenP3
//
//  Created by Cesar Elizarraraz Acosta on 23/06/22.
//

import Cocoa

class tableProducto: NSViewController {
    
    
    @IBOutlet var vc: ViewController!
    @objc dynamic var Productos: [ProductModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        Productos = vc.Productos
    }
    
}
