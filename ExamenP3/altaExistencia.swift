//
//  altaExistencia.swift
//  ExamenP3
//
//  Created by Cesar Elizarraraz Acosta on 23/06/22.
//

import Cocoa

class altaExistencia: NSViewController {
    
    let alert = NSAlert()
    @IBOutlet weak var IDProducto: NSTextField!
    @IBOutlet weak var Cantidad: NSTextField!
    @IBOutlet var vc: ViewController!
    @IBOutlet weak var IDAlmacenista: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    @IBAction func agregar(_ sender: Any) {
        var n: Int!
        let numeros = CharacterSet.decimalDigits
        
        if !IDProducto.stringValue.isEmpty && !Cantidad.stringValue.isEmpty && !IDAlmacenista.stringValue.isEmpty && CharacterSet(charactersIn: Cantidad.stringValue).isSubset(of: numeros){
            //Todo bien
            n = 0
        }
        if IDProducto.stringValue.isEmpty{
            //IDProducto vacio
            n = 1
        }
        if Cantidad.stringValue.isEmpty{
            //Cantidad vacio
            n = 2
        }
        if IDAlmacenista.stringValue.isEmpty{
            //IdCliente vacio
            n = 3
        }
        if !CharacterSet(charactersIn: Cantidad.stringValue).isSubset(of: numeros){
            //Cantidad con letras
            n = 4
        }
        
        switch n {
        case 0:
            vc.Altas.append(AltaModel(idF(idProducto: IDProducto.stringValue, idAlmacenista:  IDAlmacenista.stringValue), IDProducto.stringValue, Cantidad.integerValue, IDAlmacenista.stringValue))
            dismiss(self)
            break
        case 1:
            alert.messageText = "Rellene el campo ID Producto."
            alert.alertStyle = .critical
            alert.runModal()
            break
        case 2:
            alert.messageText = "Rellene el campo Cantidad."
            alert.alertStyle = .critical
            alert.runModal()
            break
        case 3:
            alert.messageText = "Rellene el campo ID Almacenista."
            alert.alertStyle = .critical
            alert.runModal()
            break
        case 4:
            alert.messageText = "No use letras en la Cantidad."
            alert.alertStyle = .critical
            alert.runModal()
            break
        default:
            break
        }
    }
    
    func idF(idProducto: String, idAlmacenista:String) -> String {
        var idP = idProducto
        var idA = idAlmacenista
        var idF = String(format: "%03d",vc.Ventas.count+1)
        var idFinal = "A" + "\(idF)" + "\(idP)" + "\(idA)"
        print(idFinal)
        return idFinal
    }
}
