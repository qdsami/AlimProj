import UIKit
import Spring
import LTMorphingLabel

var test = 0
var cli = false


var a = 0
var b = 1
class clickeer: UIViewController {
    

    @IBOutlet weak var lab: UILabel!
    
    @IBOutlet weak var cool: UIView!
    @IBOutlet weak var bokovie: SpringView!
    @IBOutlet weak var bokoview: SpringView!
    
    @IBOutlet weak var clickk: SpringView!
    
    @IBOutlet weak var verx: SpringView!
    
    @IBOutlet weak var viiw: SpringView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        test = UserDefaults.standard.integer(forKey: "Reklama")
        
        
        
        a = UserDefaults.standard.integer(forKey: "Key")
        
        b = UserDefaults.standard.integer(forKey: "Keyg")
        
  
        self.verx.frame.origin.x = -195
        
        self.lab.text = String(a)
        
        self.cool.alpha = 0
        
    }
    
    
    
    
    @IBAction func button(_ sender: Any) {
        if(cli == true){
            b = UserDefaults.standard.integer(forKey: "Keyg")
        }
        
        
        print(b)
        
        a = a + b
        UserDefaults.standard.set(a, forKey: "Key")
        UserDefaults.standard.set(b, forKey: "Keyg")
        self.lab.text = String(a)
        
        self.viiw.animation = "swing"
        self.viiw.animate()
        
        self.bokovie.animation = "pop"
        self.bokovie.animate()
        
        self.bokoview.animation = "pop"
        self.bokoview.animate()
        
        
        self.clickk.animation = "morph"
        self.clickk.animate()
        
        
        cli = true
        
        
        
        UIView.animate(withDuration: 0.1, animations: {
            
            
            func qew(){
                self.cool.alpha = 1
            }
            
            
            self.verx.frame.origin.x = self.verx.frame.origin.x + 600
            
        }, completion: {(finished:Bool) in
            self.verx.frame.origin.x = -195
            
            
        })
        
        test = test + 1
        
        if(test == 50){
           
            UserDefaults.standard.set(b, forKey: "Keyg")
            UIView.animate(withDuration: 1.0, animations: {
                    self.cool.alpha = 1
               
                
                
            }, completion: {(finished:Bool) in
            test = 0
                self.cool.alpha = 0
                
            })
            
        }
        
        
            
        }
    
    
    
   
    
    
    
    @IBAction func shoop(_ sender: Any) {
        performSegue(withIdentifier: "shop", sender: self)
        
        
    }
    
    
    
    
}
    

