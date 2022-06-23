//
//  tableAlta.swift
//  ExamenP3
//
//  Created by Cesar Elizarraraz Acosta on 23/06/22.
//

import Cocoa

class tableAlta: NSViewController {
    
    @IBOutlet var vc: ViewController!
    @objc dynamic var Altas: [AltaModel] = []
    var index:Int!
    var alert = NSAlert()
    @IBOutlet weak var ID: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        Altas = vc.Altas
    }
    @IBAction func eliminar(_ sender: Any) {
        if Altas.contains(where: {$0.id == ID.stringValue}){
            let indexs = Altas.map({$0.id})
            
            index = indexs.firstIndex(of: ID.stringValue)
            
            vc.Altas.remove(at: index)
            Altas.remove(at: index)
        } else{
            alert.messageText = "No se encontro el ID, intente nuevamente."
            alert.alertStyle = .critical
            alert.runModal()
        }
        
    }
    
}
