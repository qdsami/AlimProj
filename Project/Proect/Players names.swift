import UIKit

var one = ""
var two = ""


class Players_names: UIViewController {

    
    
    
    
    
    @IBOutlet weak var player1: UITextField!
    @IBOutlet weak var player2: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    

    @IBAction func buttton(_ sender: Any) {
        
        
        one = self.player1.text ?? "player1"
        two = self.player2.text ?? "player2"
        
       self.performSegue(withIdentifier: "batan", sender: self)
        
    }
}
