//
//  venta.swift
//  ExamenP3
//
//  Created by ISSC_412_2022 on 16/06/22.
//

import Foundation

class ventaOBJ: NSObject{
    @objc dynamic var id:String
    @objc dynamic var idProducto:String
    @objc dynamic var cantidad:Int
    @objc dynamic var idCliente:String
    
    init(_ id:String, _ idProducto:String, _ cantidad:Int, _ idCliente:String){
        self.id = id
        self.idProducto = idProducto
        self.cantidad = cantidad
        self.idCliente = idCliente
    }
    
}
