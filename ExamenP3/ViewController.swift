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
    var Usuarios: [PersonModel] = [PersonModel("CEA001A", "César", "Elizarraraz", "Acosta", "cesar@bodega.com", "cesarin", "Admin"), PersonModel("FMC002a", "Fernando", "Miramontes", "Castro", "fer@bodega.com", "fercho", "Almacenista"), PersonModel("ACV003V", "Alfonso", "Cano", "Vargas", "poncho@bodega.com", "poncho", "Vendedor"), PersonModel("CBX004C", "Cesar", "Bernal", "X", "bernal@bodega.com", "bernal", "Cliente")]
    var Ventas: [VentaModel] = [VentaModel("21","21",12,"21")]
    var Productos: [ProductModel] = [ProductModel("","","",10.0, 10.0)]
    var Altas: [AltaModel] = [AltaModel("","",15,"")]
    var alert = NSAlert()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func login(_ sender: Any) {
        correo = mail.stringValue
        pass = password.stringValue
        
        for user in Usuarios {
            if correo == user.mail && pass == user.pass{
                alert.messageText = "Accediste a \(user.rol) \(user.nombre)."
                alert.alertStyle = .informational
                alert.runModal()
                
                if user.rol == "Admin" {
                    performSegue(withIdentifier: "loginAdminSegue", sender: self)
                    
                } else if user.rol == "Almacenista" {
                    performSegue(withIdentifier: "loginAlmacenSegue", sender: self)
                    
                } else if user.rol == "Vendedor" {
                    performSegue(withIdentifier: "loginVendedoresSegue", sender: self)
                    
                } else if user.rol == "Cliente" {
                    alert.messageText = "Gracias por comprar en nuestra tienda."
                    alert.alertStyle = .informational
                    alert.runModal()
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
            (segue.destinationController as! adminMenu).vc = self
        } else if segue.identifier == "loginAlmacenSegue" {
            (segue.destinationController as! almacenMenu).vc = self
        } else if segue.identifier == "loginVendedoresSegue" {
            (segue.destinationController as! ventasMenu).vc = self
        }
    }
    
}
