//
//  ViewController.swift
//  PrimeApp
//
//  Created by SHYNU MARY VARGHESE on 2023-08-31.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBAction func primeNumberButton(_ sender: UIButton) {
        //empty string or any valid string user can enter
        if let userEnteredString = inputTextField.text{
            let userEnteredInt = Int(userEnteredString)
                //number % 2 == 0 --> not a prime
            if let number = userEnteredInt{
                var isPrime = true
                    if number == 1{
                        isPrime = false
                    }
                    var i = 2
                    while i < number{
                        if  number % i == 0 {
                            isPrime = false
                        }
                        i+=1
                    }
                if isPrime{
                    outputLabel.text = "\(number) is prime"
                }
                else{
                    outputLabel.text = "\(number) is not prime"
                }
            }
            else{
                outputLabel.text = "Please enter a positive whole number"
            }
                
                
            }
        
    }
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

