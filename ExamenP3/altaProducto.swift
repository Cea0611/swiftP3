//
//  altaProducto.swift
//  ExamenP3
//
//  Created by Cesar Elizarraraz Acosta on 23/06/22.
//

import Cocoa

class altaProducto: NSViewController {

    let alert = NSAlert()
    @IBOutlet var vc: ViewController!
    
    @IBOutlet weak var Detalle: NSTextField!
    @IBOutlet weak var Unidad: NSComboBox!
    @IBOutlet weak var Costo: NSTextField!
    @IBOutlet weak var Precio: NSTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        Unidad.isEditable = false
    }
    
    @IBAction func agregar(_ sender: Any) {
        var n: Int!
        let numeros = CharacterSet.decimalDigits
        
        if !Detalle.stringValue.isEmpty && !Unidad.stringValue.isEmpty && !Costo.stringValue.isEmpty && !Precio.stringValue.isEmpty && CharacterSet(charactersIn:Costo.stringValue).isSubset(of: numeros) && CharacterSet(charactersIn:Precio.stringValue).isSubset(of: numeros){
            //Todo bien
            n = 0
        }
        if Detalle.stringValue.isEmpty{
            //Detalle vacio
            n = 1
        }
        if Unidad.stringValue.isEmpty{
            //Unidad vacio
            n = 2
        }
        if Costo.stringValue.isEmpty{
            //Costo vacio
            n = 3
        }
        if Precio.stringValue.isEmpty{
            //Precio vacio
            n = 4
        }
        if !CharacterSet(charactersIn:Costo.stringValue).isSubset(of: numeros){
            //Costo con letras
            n = 5
        }
        if !CharacterSet(charactersIn:Precio.stringValue).isSubset(of: numeros){
            //Precio con letras
            n = 6
        }
        
        switch n {
        case 0:
            vc.Productos.append(ProductModel(idF(Unidad: Unidad.stringValue, Detalle: Detalle.stringValue), Detalle.stringValue, Unidad.stringValue, Costo.doubleValue, Precio.doubleValue))
            dismiss(self)
            break
        case 1:
            alert.messageText = "Rellene el campo Detalle."
            alert.alertStyle = .critical
            alert.runModal()
            break
        case 2:
            alert.messageText = "Rellene el campo Unidad."
            alert.alertStyle = .critical
            alert.runModal()
            break
        case 3:
            alert.messageText = "Rellene el campo Costo."
            alert.alertStyle = .critical
            alert.runModal()
            break
        case 4:
            alert.messageText = "Rellene el campo Precio."
            alert.alertStyle = .critical
            alert.runModal()
            break
        case 5:
            alert.messageText = "No use letras en el Costo."
            alert.alertStyle = .critical
            alert.runModal()
            break
        case 6:
            alert.messageText = "No use letras en el Precio."
            alert.alertStyle = .critical
            alert.runModal()
            break
        default:
            break
        }
        
    }
    
    func idF(Unidad: String, Detalle:String) -> String {
        var U = Unidad[Unidad.startIndex]
        var D = Detalle.prefix(3)
        var idF = String(format: "%03d",vc.Ventas.count+1)
        var idFinal = "\(D)" + "\(idF)" + "\(U)"
        print(idFinal)
        return idFinal
    }
    
}
