//
//  Person.swift
//  PersonMgr
//
//  Created by Timothée CORRADO on 24/10/2018.
//  Copyright © 2018 Timothée CORRADO. All rights reserved.
//

import UIKit

class Person: NSObject
{
    var fname : String
    var lname : String
    var age : Int
    var nationality : String
    var gender : String
    
    init (fname:String, lname:String, age:Int, nationality:String, gender:String)
    {
       self.fname = fname
       self.lname = lname
       self.age = age
       self.nationality = nationality
       self.gender = gender
        
    }

}

let Person1 = Person(fname: "Jean", lname: "Dupont", age: 32, nationality: "Français", gender: "Homme")



