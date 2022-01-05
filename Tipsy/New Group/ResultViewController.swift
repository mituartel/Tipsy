//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Maximiliano Ituarte on 04/01/2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var totalLabel: UILabel!
    @IBOutlet var settinLabel: UILabel!
    
    var Resultado: String = ""
    var Propina: Double = 0
    var Persona: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        getResult()
        getLabel()
        
    }
    
    func getResult(){
        
        let resultado = totalLabel.text
        print(resultado ?? "0")
        
    }
    
    func getLabel(){
       
      let propinaPorcentaje = Int(Propina * 100)
      let personaEntero = Int(Persona)
      
      settinLabel.text = "Split between \(personaEntero) people, with \(propinaPorcentaje)% tip"
        
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
