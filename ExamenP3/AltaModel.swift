//
//  AltasModel.swift
//  ExamenP3
//
//  Created by Cesar Elizarraraz Acosta on 23/06/22.
//

import Foundation

class AltaModel: NSObject {
    @objc dynamic var id: String
    @objc dynamic var idProducto: String
    @objc dynamic var cantidad: Int
    @objc dynamic var idAlmacenista: String
    
    init(_ id: String, _ idProducto: String, _ cantidad: Int, _ idAlmacenista: String) {
        self.id = id
        self.idProducto = idProducto
        self.cantidad = cantidad
        self.idAlmacenista = idAlmacenista
    }
}
