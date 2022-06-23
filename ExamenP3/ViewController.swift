//
//  ViewController.swift
//  ExamenP3
//
//  Created by ISSC_412_2022 on 09/06/22.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var mail: NSTextField!
    @IBOutlet weak var password: NSTextField!
    @IBOutlet weak var loginbtn: NSButton!
    
    var correo: String = ""
    var banderaLogin: Bool = false
    var pass: String = ""
    var Usuarios: [PersonModel] = [PersonModel("A001CEA", "Cesar", "Elizarraraz", "Acosta", "cesar@bodega.com", "cesarin", "Admin"), PersonModel("A002FMC", "Fernando", "Miramontes", "Castro", "fer@bodega.com", "fercho", "Almacenista"), PersonModel("A003ACV", "Alfonso", "Cano", "Vargas", "poncho@bodega.com", "poncho", "Vendedor")]
    var Ventas: [VentaModel] = []
    var Productos: [ProductModel] = []
    var alert = NSAlert()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func login(_ sender: Any) {
        correo = mail.stringValue
        pass = password.stringValue
        
        for user in Usuarios {
            if correo == user.mail && pass == user.pass{
                alert.messageText = "Acceso concedido.\(user.nombre)"
                alert.runModal()
                
                if user.rol == "Admin" {
                    performSegue(withIdentifier: "loginAdminSegue", sender: self)
                    
                } else if user.rol == "Almacenista" {
                    performSegue(withIdentifier: "loginAlmacenSegue", sender: self)
                    
                } else if user.rol == "Vendedor" {
                    performSegue(withIdentifier: "loginVendedoresSegue", sender: self)
                    
                }
                banderaLogin = true
            }
        }
        if banderaLogin == false {
            alert.messageText = "Ocurrio un error, intente nuevamente"
            alert.runModal()
        }
        banderaLogin = false
    }
    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
        if segue.identifier == "loginAdminSegue" {
            (segue.destinationController as! altaUsuario).vc = self
        /*} else if segue.identifier == "menuAlmacenistaSegue" {
            (segue.destinationController as! MenuAlmacenistas).login = self
        } else if segue.identifier == "menuVentasSegue" {
            (segue.destinationController as! MenuVentas).login = self
        }*/
    }
    
}

}
