//
//  ViewController.swift
//  ConvertidorTemperaturas
//
//  Created by Jesús Heriberto Vásquez Sánchez on 8/10/18.
//  Copyright © 2018 Jesús Heriberto Vásquez Sánchez. All rights reserved.
//

import UIKit

class ViewController: UIViewController { //: es herencia

    @IBOutlet weak var tfFahrenheit: UITextField!
    
    @IBOutlet weak var tfCelsius: UITextField!
    
    let convertidor : ConvertidorTemperaturas
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func convertir(_ sender: UIButton) {
        let gradosF = tfFahrenheit.text //let es constante
        if gradosF != nil {
            let fahreinheit = gradosF!
            let valorGF = Double(fahreinheit)  //lo hacemos double es como elnew en java
            
            if let dF = valorGF{
                convertidor.fahrenheit = dF
                convertidor.convertir()
                let dC = convertidor.celsius
                
                tfCelsius.text = "\(dC)"
            }
            
        }
    }
}

