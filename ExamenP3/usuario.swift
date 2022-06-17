//
//  usuario.swift
//  ExamenP3
//
//  Created by ISSC_412_2022 on 16/06/22.
//

import Foundation

class userOBJ: NSObject{
    @objc dynamic var id:String
    @objc dynamic var nombre:String
    @objc dynamic var apellidoP:String
    @objc dynamic var apellidoM:String
    @objc dynamic var correo:String
    @objc dynamic var contraseña:String
    @objc dynamic var rol:String
    
    init(_ id:String, _ nombre:String, _ apellidoP:String, _ apellidoM:String, _ correo:String, _ contraseña:String,_ rol:String){
        self.id = id
        self.nombre = nombre
        self.apellidoP = apellidoP
        self.apellidoM = apellidoM
        self.correo = correo
        self.contraseña = contraseña
        self.rol = rol
    }
    
}
