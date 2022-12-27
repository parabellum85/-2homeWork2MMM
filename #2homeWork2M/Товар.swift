//
//  Товар.swift
//  #2homeWork2M
//
//  Created by Нурлан on 23/12/22.
//

import Foundation

class Tovar{
    var name: String
    var size: Int
    var cost: Int
    
    init(name: String, size: Int, cost: Int) {
        self.name = name
        self.size = size
        self.cost = cost
    }
    func showInfo(){
        print("\(name) , \(size) , \(cost)")
    }
}
