//
//  altaUsuario.swift
//  ExamenP3
//
//  Created by ISSC_412_2022 on 22/06/22.
//

import Cocoa

class altaUsuario: NSViewController {

    let alert = NSAlert()
    @IBOutlet weak var Nombre: NSTextField!
    @IBOutlet weak var ApellidoP: NSTextField!
    @IBOutlet weak var ApellidoM: NSTextField!
    @IBOutlet weak var Correo: NSTextField!
    @IBOutlet weak var Contraseña: NSTextField!
    @IBOutlet weak var Rol: NSComboBox!
    @IBOutlet var vc: ViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Rol.isEditable = false
    }
    
}
