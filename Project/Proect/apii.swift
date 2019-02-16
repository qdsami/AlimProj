
import UIKit
import Alamofire
import SwiftyJSON


class apii: UIViewController {
    
    //12345
   
    @IBOutlet weak var tf: UITextField!
    @IBOutlet weak var lb: UILabel!
    var number = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func tap(_ sender: Any) {
        number = tf.text ?? "44"
        number = "http://numbersapi.com/" + number
        Alamofire.request(number).responseString{ response in
            self.lb.text = response.value
        }
    }
    
    
}
