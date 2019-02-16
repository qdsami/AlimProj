//
//  Shop.swift
//  Proect

import UIKit
var fact = false
class Shop: UIViewController {

    @IBOutlet weak var scolko: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        if (fact == true) {
   test = UserDefaults.standard.integer(forKey: "Reklama")
        
//b = UserDefaults.standard.integer(forKey: "Keyg")
        }
    }
    
    @IBAction func tvo(_ sender: Any) {
        if(a > 200){
            a = a - 200
            b = b + 2
            UserDefaults.standard.set(a, forKey: "Key")
            UserDefaults.standard.set(b, forKey: "Keyg")
            
            fact = true
            
            self.scolko.text = String(a)
        }
    }
    
    @IBAction func vernut(_ sender: Any) {
        test = 0
        UserDefaults.standard.set(test, forKey: "Reklama")
        
        
    }
    @IBAction func five(_ sender: Any) {
        if(a > 1000){
            a = a - 1000
            b = b + 5
            UserDefaults.standard.set(a, forKey: "Key")
            UserDefaults.standard.set(b, forKey: "Keyg")
            
            fact = true
             self.scolko.text = String(a)
        }
    }
    

    @IBAction func bakk(_ sender: Any) {
        performSegue(withIdentifier: "clic", sender: self)
    }
    
    
    @IBAction func ubrat(_ sender: Any) {
        
        if(a > 1000){
        test = 100
            a = a - 1000
            UserDefaults.standard.set(b, forKey: "Keyg")
            UserDefaults.standard.set(test, forKey: "Reklama")
        }
    }
    @IBAction func deletee(_ sender: Any) {
        
        
        
        
        
    }
    
    
}
