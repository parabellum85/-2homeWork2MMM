//
//  Авто зпчасти.swift
//  #2homeWork2M
//
//  Created by Нурлан on 23/12/22.
//

import Foundation




class Autoparts: Market {
    var tovarrr: [Tovar] = [Tovar]()
    
    override init(name: String, square: Int, ip: String, timeWork: String) {
        super.init(name:name, square: square, ip: ip, timeWork: timeWork)
    }
    override func showInfo() {
        print("название - \(name)\nплощадь - \(square) квм\nлокация - \(ip)\nвремя работы - \(timeWork)")
        for i in tovar {
            print("товар \(i.name)\n цена - \(i.cost)\n размер -  \(i.size)")
        }
    }
    func addTovarrr(add:Tovar) {
        var accecories = true
        for i in tovarrr{
            if add.name == i.name && add.cost == i.cost && add.size == i.size{
                accecories = false
                i.cost += add.cost
            }
        }
        if accecories != false{
            tovarrr.append(add)
        }
    }
}

