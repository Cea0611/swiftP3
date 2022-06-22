//
//  ProductModel.swift
//  ExamenP3
//
//  Created by Cesar Elizarraraz Acosta on 22/06/22.
//

import Foundation

class ProductModel: NSObject {
    @objc dynamic var id: String
    @objc dynamic var detalle: String
    @objc dynamic var unidad: String
    @objc dynamic var costo: Double
    @objc dynamic var precio: Double
    
    init(_ id: String, _ detalle: String, _ unidad: String, _ costo: Double, _ precio: Double) {
        self.id = id
        self.detalle = detalle
        self.unidad = unidad
        self.costo = costo
        self.precio = precio
    }
}
