//
//  altaVenta.swift
//  ExamenP3
//
//  Created by Cesar Elizarraraz Acosta on 23/06/22.
//

import Cocoa

class altaVenta: NSViewController {
    
    let alert = NSAlert()
    @IBOutlet weak var IDProducto: NSTextField!
    @IBOutlet weak var Cantidad: NSTextField!
    @IBOutlet weak var IDCliente: NSTextField!
    @IBOutlet var vc: ViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func agregar(_ sender: Any) {
        var n: Int!
        let numeros = CharacterSet.decimalDigits
        
        if !IDProducto.stringValue.isEmpty && !Cantidad.stringValue.isEmpty && !IDCliente.stringValue.isEmpty && CharacterSet(charactersIn: Cantidad.stringValue).isSubset(of: numeros){
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
        if IDCliente.stringValue.isEmpty{
            //IdCliente vacio
            n = 3
        }
        if !CharacterSet(charactersIn:	 Cantidad.stringValue).isSubset(of: numeros){
            //Cantidad con letras
            n = 4
        }
        
        switch n {
        case 0:
            vc.Ventas.append(VentaModel(idF(idProducto: IDProducto.stringValue, idCliente: IDCliente.stringValue), IDProducto.stringValue, Cantidad.integerValue, IDCliente.stringValue))
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
            alert.messageText = "Rellene el campo IDCliente."
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
    
    func idF(idProducto: String, idCliente:String) -> String {
        var idP = idProducto
        var idC = idCliente
        var idF = String(format: "%03d",vc.Ventas.count+1)
        var idFinal = "V" + "\(idF)" + "\(idP)" + "\(idF)"
        print(idFinal)
        return idFinal
    }
}
