//
//  tableVenta.swift
//  ExamenP3
//
//  Created by Cesar Elizarraraz Acosta on 23/06/22.
//

import Cocoa

class tableVenta: NSViewController {
    
    @IBOutlet var vc: ViewController!
    
    @objc dynamic var Ventas: [VentaModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        Ventas = vc.Ventas
    }
    
    
}