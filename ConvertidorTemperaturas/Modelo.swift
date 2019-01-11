//
//  Modelo.swift
//  ConvertidorTemperaturas
//
//  Created by Jesús Heriberto Vásquez Sánchez on 11/10/18.
//  Copyright © 2018 Jesús Heriberto Vásquez Sánchez. All rights reserved.
//

import Foundation
class ConvertidorTemperaturas{
    var fahrenheit: Double = 0
    var celsius: Double = 0
    
    func convertir (){
        celsius = (fahrenheit-32)*(5/9)
    }
}
