import UIKit
import Spring
import LTMorphingLabel



class ViewControllerStart: UIViewController {


    
    @IBOutlet weak var sdf: UIView!
    @IBOutlet weak var sdf1: UIView!
    @IBOutlet weak var verhuchka: UIView!
    
    
    
    @IBOutlet weak var gradientView: UIView!
    
    @IBOutlet weak var gradientView2: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    setGradient()
   
    }
    
    func setGradient() {
        let gradientLayer4 = CAGradientLayer()
        gradientLayer4.colors = [UIColor.orange.cgColor, UIColor.white.cgColor]
        gradientLayer4.startPoint = CGPoint(x: 0.5, y: 1.0)
        gradientLayer4.endPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayer4.locations = [0, 1]
        
        
        let gradientLayer3 = CAGradientLayer()
        gradientLayer3.colors = [UIColor.orange.cgColor, UIColor.white.cgColor]
        gradientLayer3.startPoint = CGPoint(x: 0.5, y: 1.0)
        gradientLayer3.endPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayer3.locations = [0, 1]
        
        
        gradientLayer3.frame = sdf.bounds
        
        gradientLayer4.frame = sdf1.bounds
        
        sdf.layer.insertSublayer(gradientLayer3, at: 0)
        
        sdf1.layer.insertSublayer(gradientLayer4, at: 0)
        
        let gradientLayer5 = CAGradientLayer()
        gradientLayer5.colors = [UIColor.white.cgColor, UIColor.orange.cgColor]
        gradientLayer5.startPoint = CGPoint(x: 0.5, y: 1.0)
        gradientLayer5.endPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayer5.locations = [0, 1]
        verhuchka.layer.insertSublayer(gradientLayer5, at: 0)
        gradientLayer5.frame = verhuchka.bounds
        
        
        
        
        
        
        
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.white.cgColor, UIColor.orange.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayer.locations = [0, 1]
        
        
        gradientLayer.frame = gradientView.bounds
        
        
        let gradientLayer1 = CAGradientLayer()
        gradientLayer1.colors = [UIColor.white.cgColor, UIColor.orange.cgColor]
        gradientLayer1.startPoint = CGPoint(x: 0.5, y: 1.0)
        gradientLayer1.endPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayer1.locations = [0, 1]
       
        
        gradientView.layer.insertSublayer(gradientLayer, at: 0)
        
        gradientLayer1.frame = gradientView2.bounds
        
        gradientView2.layer.insertSublayer(gradientLayer1, at: 0)
    }
 
    @IBAction func vkvk(_ sender: Any) {
        
        guard let url = URL(string: "https://vk.com/java.scripts") else { return }
        UIApplication.shared.open(url)
    }
    
}
