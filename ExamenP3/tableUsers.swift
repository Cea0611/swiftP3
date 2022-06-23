//
//  tableUsers.swift
//  ExamenP3
//
//  Created by Cesar Elizarraraz Acosta on 22/06/22.
//

import Cocoa

class tableUsers: NSViewController {
    
    @IBOutlet var vc: ViewController!
    @objc dynamic var Usuarios: [PersonModel] = []
    @IBOutlet weak var ID: NSTextField!
    var index:Int!
    var alert = NSAlert()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        Usuarios = vc.Usuarios
    }
    
    @IBAction func eliminar(_ sender: Any) {
        if Usuarios.contains(where: {$0.id == ID.stringValue}){
            let indexs = Usuarios.map({$0.id})
            index = indexs.firstIndex(of: ID.stringValue)
            vc.Usuarios.remove(at: index)
            Usuarios.remove(at: index)
        } else{
            alert.messageText = "No se encontro el ID, intente nuevamente."
            alert.alertStyle = .critical
            alert.runModal()
        }
    }
}
