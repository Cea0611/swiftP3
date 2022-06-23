//
//  tableProducto.swift
//  ExamenP3
//
//  Created by Cesar Elizarraraz Acosta on 23/06/22.
//

import Cocoa

class tableProducto: NSViewController {
    
    
    @IBOutlet var vc: ViewController!
    @IBOutlet weak var ID: NSTextField!
    @objc dynamic var Productos: [ProductModel] = []
    var index:Int!
    var alert = NSAlert()
    var bandera = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        Productos = vc.Productos
    }
    
    @IBAction func eliminar(_ sender: Any) {
        if Productos.contains(where: {$0.id == ID.stringValue}){
            let indexs = Productos.map({$0.id})
            index = indexs.firstIndex(of: ID.stringValue)
            vc.Productos.remove(at: index)
            Productos.remove(at: index)
        } else{
            alert.messageText = "No se encontro el ID, intente nuevamente."
            alert.alertStyle = .critical
            alert.runModal()
        }
    }
    
    //Modifcar q no jalo
    /*@IBAction func modificar(_ sender: Any) {
        if Productos.contains(where: {$0.id == ID.stringValue}){
            let indexs = Productos.map({$0.id})
            
            index = indexs.firstIndex(of: ID.stringValue)!
            
            dismiss(self)
            performSegue(withIdentifier: "modNuevoPSegue", sender: self)
        }
    }
    
    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
        if (segue.identifier == "modNuevoPSegue"){
            (segue.destinationController as! altaProducto).vc = vc
            bandera = true
            (segue.destinationController as! altaProducto).bandera = bandera
            (segue.destinationController as! altaProducto).index = index
            
        }
    }*/
}
