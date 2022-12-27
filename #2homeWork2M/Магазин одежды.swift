//
//  Магазин одежды.swift
//  #2homeWork2M
//
//  Created by Нурлан on 23/12/22.
//

import Foundation
class ClothingStore: Market {
    var tovarr: [Tovar] = [Tovar]()
    
    override init(name: String, square: Int, ip: String, timeWork: String) {
        super.init(name:name, square: square, ip: ip, timeWork: timeWork)
    }
    override func showInfo() {
        print("названия - \(name)\nплощадь - \(square) квм\nлокация - \(ip)\nвремя работы - \(timeWork)")
        for i in tovarr {
            print("товар \(i.name)\n цена - \(i.cost)\n размер -  \(i.size)")
        }
    }
     func addTovarr(add:Tovar) {
        var accecories = true
        for i in tovarr{
            if add.name == i.name && add.cost == i.cost && add.size == i.size{
                accecories = false
                i.cost += add.cost
            }
        }
        if accecories != false{
            tovarr.append(add)
        }
    }
}
