//
//  tableVenta.swift
//  ExamenP3
//
//  Created by Cesar Elizarraraz Acosta on 23/06/22.
//

import Cocoa

class tableVenta: NSViewController {
    
    @IBOutlet var vc: ViewController!
    @IBOutlet weak var ID: NSTextField!
    @objc dynamic var Ventas: [VentaModel] = []
    var index:Int!
    var alert = NSAlert()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        Ventas = vc.Ventas
    }
    
    @IBAction func eliminar(_ sender: Any) {
        if Ventas.contains(where: {$0.id == ID.stringValue}){
            let indexs = Ventas.map({$0.id})
            
            index = indexs.firstIndex(of: ID.stringValue)
            
            vc.Ventas.remove(at: index)
            Ventas.remove(at: index)
        } else{
            alert.messageText = "No se encontro el ID, intente nuevamente."
            alert.alertStyle = .critical
            alert.runModal()
        }
    }
    
    
}
