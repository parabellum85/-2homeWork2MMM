//
//  Магазин.swift
//  #2homeWork2M
//
//  Created by Нурлан on 23/12/22.
//

import Foundation



class Market{
    var name: String
    var square: Int
    var ip: String
    var timeWork: String
    var tovar: [Tovar] = [Tovar]()
  
    init(name: String, square: Int, ip: String, timeWork: String) {
        self.name = name
        self.square = square
        self.ip = ip
        self.timeWork = timeWork
    }
    func showInfo(){
        print("название - \(name)\nплощадь - \(square) квм\nлокация - \(ip)\nвремя работы -\(timeWork)")
        for i in tovar{
            print("Товар - \(i.name)\n цена - \(i.cost)\nобьем - \(i.size) л" )
        }
    }
    func addTovar(add:Tovar) {
        var accecories = true
        for i in tovar{
            if add.name == i.name && add.cost == i.cost && add.size == i.size{
                accecories = false
                i.cost += add.cost
            }
        }
        if accecories != false{
            tovar.append(add)
        }
    }
}

    


