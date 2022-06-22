//
//  PersonModel.swift
//  ExamenP3
//
//  Created by Cesar Elizarraraz Acosta on 22/06/22.
//

import Foundation

class PersonModel: NSObject {
    @objc dynamic var id: String
    @objc dynamic var nombre: String
    @objc dynamic var apellidoP: String
    @objc dynamic var apellidoM: String
    @objc dynamic var mail: String
    @objc dynamic var pass: String
    @objc dynamic var rol: String

    init (_ id: String, _ nombre: String, _ apellidoP: String, _ apellidoM: String, _ correo: String, _ pass: String, _ rol: String) {
        self.id = id
        self.nombre = nombre
        self.apellidoP = apellidoP
        self.apellidoM = apellidoM
        self.mail = correo
        self.pass = pass
        self.rol = rol
    }
}
