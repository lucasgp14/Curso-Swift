//
//  Modelo2.swift
//  JSON
//
//  Created by Lucas Gustavo Pérez on 30/10/2023.
//

import Foundation

struct Modelo2 : Decodable{
    var data: [UserList]
}

struct UserList : Decodable{
    var id : Int
    var firstName : String
    var email : String
    var avatar : String
}
