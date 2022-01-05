//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet var billTextField: UITextField!
    
    @IBOutlet var zeroPctButton: UIButton!
    @IBOutlet var tenPctButton: UIButton!
    @IBOutlet var twentyPctButton: UIButton!
    
    @IBOutlet var splitNumberLabel: UILabel!
    
    var tip : Double = 0
    var people: Double = 0
    var bill : String = ""
    var result: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        let tipPressed =  sender.currentTitle!
        let tipPressedMin = String(tipPressed.dropLast())
        let tipFinal = Double(tipPressedMin)
        tip = tipFinal! / 100
        
       // let formattedHeight = String(format: "%.2f", sender.value)
        // heightLabel.text = "\(formattedHeight)m"
       
       
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
        people = Double(sender.value)
        splitLabel.text = String(people)
        
        
    }
    
    @IBAction func zero(_ sender: Any) {
        
      
    }
    
    
    @IBOutlet var splitLabel: UILabel!
    
    @IBAction func ten(_ sender: Any) {
        
      
    }
    
    @IBAction func twenty(_ sender: Any) {
      
       
    }
    
    @IBAction func calculatedPressed(_ sender: Any) {
      
      bill = billTextField.text!
      let billFormatted = Double(bill)!
      let billPlus =  billFormatted * tip
      let billPlusTip = billFormatted + billPlus
      let totalBill = billPlusTip / people
      let result = Float(totalBill)
      

      
      print(result)
        
        
      self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     let destinationVC = segue.destination as! ResultViewController 
    
         destinationVC.Resultado = result
         destinationVC.Propina = tip
         destinationVC.Persona = people
     
    
    
    
}

}
