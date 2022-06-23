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
    
    @IBAction func registrar(_ sender: Any) {
        var n: Int!
        let abecedario = CharacterSet.letters
        
        
        if !Nombre.stringValue.isEmpty && CharacterSet(charactersIn: Nombre.stringValue).isSubset(of: abecedario) && !ApellidoP.stringValue.isEmpty && CharacterSet(charactersIn: ApellidoP.stringValue).isSubset(of: abecedario) && !ApellidoM.stringValue.isEmpty && CharacterSet(charactersIn: ApellidoM.stringValue).isSubset(of: abecedario) && !Correo.stringValue.isEmpty && !Rol.stringValue.isEmpty && !Contraseña.stringValue.isEmpty{
            //Todo bien
            n = 0
        }
        if Nombre.stringValue.isEmpty{
            //Nombre vacio
            n = 1
        }
        if !CharacterSet(charactersIn: Nombre.stringValue).isSubset(of: abecedario){
            //Nombre con numeros
            n = 2
        }
        if ApellidoP.stringValue.isEmpty{
            //ApellidoP vacio
            n = 3
        }
        if !CharacterSet(charactersIn: ApellidoP.stringValue).isSubset(of: abecedario){
            //ApellidoP con numeros
            n = 4
        }
        if ApellidoM.stringValue.isEmpty{
            //ApellidoP vacio
            n = 5
        }
        if !CharacterSet(charactersIn: ApellidoM.stringValue).isSubset(of: abecedario){
            //ApellidoM con numeros
            n = 6
        }
        if Correo.stringValue.isEmpty{
            //correo vacio
            n = 7
        }
        if Rol.stringValue.isEmpty{
            //correo vacio
            n = 8
        }
        if Contraseña.stringValue.isEmpty{
            //Contrsenia vacia
            n = 9
        }
        
        switch n{
        case 0:
            vc.Usuarios.append(PersonModel(idF(nombre: Nombre.stringValue, apellidoP: ApellidoP.stringValue, apellidoM: ApellidoM.stringValue, rol: Rol.stringValue), Nombre.stringValue, ApellidoP.stringValue, ApellidoM.stringValue, Correo.stringValue, Contraseña.stringValue, Rol.stringValue))
            //print(vc.Usuarios)
            dismiss(self)
            break
        case 1:
            alert.messageText = "Rellene el campo Nombre."
            alert.alertStyle = .critical
            alert.runModal()
            break
        case 2:
            alert.messageText = "No use numeros en el Nombre."
            alert.alertStyle = .critical
            alert.runModal()
            break
        case 3:
            alert.messageText = "Rellene el campo Apellido P."
            alert.alertStyle = .critical
            alert.runModal()
            break
        case 4:
            alert.messageText = "No use numeros en el Apellido P."
            alert.alertStyle = .critical
            alert.runModal()
            break
        case 5:
            alert.messageText = "Rellene el campo Apellido M."
            alert.alertStyle = .critical
            alert.runModal()
            break
        case 6:
            alert.messageText = "No use numeros en el Apellido M."
            alert.alertStyle = .critical
            alert.runModal()
            break
        case 7:
            alert.messageText = "Rellene el campo Correo."
            alert.alertStyle = .critical
            alert.runModal()
            break
        case 8:
            alert.messageText = "Rellene el campo Rol."
            alert.alertStyle = .critical
            alert.runModal()
            break
        case 9:
            alert.messageText = "Rellene el campo Contraseña."
            alert.alertStyle = .critical
            alert.runModal()
            break
        default:
            break
            
        }
        
    }
    
    func idF(nombre: String, apellidoP: String, apellidoM:String, rol:String) -> String {
        var n = nombre[nombre.startIndex]
        var aP = apellidoP[apellidoP.startIndex]
        var aM = apellidoM[apellidoM.startIndex]
        var r = rol[rol.startIndex]
        if rol == "Admin" {
            r = "A"
        } else if rol == "Almacenista"{
            r="a"
        } else if rol == "Vendedor"{
            r="V"
        } else if rol == "Cliente"{
            r="C"
        }
        var idF = String(format: "%03d",vc.Usuarios.count+1)
        var idFinal = "\(n)" + "\(aP)" + "\(aM)" + "\(idF)" + "\(r)"
        print(idFinal)
        return idFinal
    }
    
}

