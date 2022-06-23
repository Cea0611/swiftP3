//
//  VentaModel.swift
//  ExamenP3
//
//  Created by Cesar Elizarraraz Acosta on 22/06/22.
//

import Foundation

class VentaModel: NSObject {
    @objc dynamic var id: String
    @objc dynamic var idProducto: String
    @objc dynamic var cantidad: Int
    @objc dynamic var idCliente: String
    
    init(_ id: String, _ idProducto: String, _ cantidad: Int, _ idCliente: String) {
        self.id = id
        self.idProducto = idProducto
        self.cantidad = cantidad
        self.idCliente = idCliente
    }
}
