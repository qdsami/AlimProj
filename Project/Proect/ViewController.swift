//
//  ViewController.swift
//  Proect
//
//  Created by Академия ШАГ on 1/19/19.
//  Copyright © 2019 Yukine. All rights reserved.
//

import UIKit
import LTMorphingLabel
import Spring
var coin = 0;





class ViewController: UIViewController {


    @IBOutlet weak var a: LTMorphingLabel!
    @IBOutlet weak var vieww: UIView!
    

    @IBOutlet weak var cherniiekran: SpringView!
    
    @IBOutlet weak var seredina: SpringView!
    
    @IBOutlet weak var playyer: UILabel!
    
    
    @IBOutlet weak var qwe: SpringView!
    
    
    @IBOutlet weak var ewq: SpringView!
    
    @IBOutlet weak var pl1: UIButton!
    @IBOutlet weak var pl2: UIButton!
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.cherniiekran.frame.origin.y =  -1000
    
        
        self.pl1.setTitle(one,for: .normal)
        self.pl2.setTitle(two,for: .normal)
        
        
        
        
    }
    
    
    //x=-3 y=0
    //x=-3 y=-840
    
    
    func win_lose(){
        if (coin == 6) {
            coin = 0
            self.vieww.frame.origin.x =  130
            self.a.text = String(coin)
            
            
            self.seredina.animation = "pop"
            self.seredina.animate()
            
            
            self.playyer.text = one
            
            UIView.animate(withDuration: 2.5, animations: {
                self.cherniiekran.frame.origin.y =  0
            }) { _ in
                UIView.animate(withDuration: 4.5, animations: {
                    self.cherniiekran.frame.origin.y =  -1000
                })
            }
            
            
            
        }
        else if (coin == -6) {
            coin = 0
            self.vieww.frame.origin.x = 130
            self.a.text = String(coin)
            
            
            self.seredina.animation = "pop"
            self.seredina.animate()
            
            self.playyer.text = two
            
            UIView.animate(withDuration: 5.5, animations: {
                self.cherniiekran.frame.origin.y =  0
            }) { _ in
                UIView.animate(withDuration: 4.5, animations: {
                    self.cherniiekran.frame.origin.y =  -1000
                })
            }
            
            
            
            
        }
    }
    
    @IBAction func tap(_ sender: Any) {
        self.qwe.animation = "pop"
        self.qwe.animate()
        UIView.animate(withDuration: 1.5, animations: {
            
            
            
            
            coin = coin + 1
            self.a.text = String(coin)
            self.vieww.frame.origin.x = self.vieww.frame.origin.x + 35
            self.win_lose()
            
            
        })
    }
    
    
    
    @IBAction func tapp(_ sender: Any) {
        
        self.ewq.animation = "pop"
        self.ewq.animate()
        
        UIView.animate(withDuration: 1.5, animations: {
            
            
            coin = coin - 1
            self.a.text = String(coin)
            self.vieww.frame.origin.x = self.vieww.frame.origin.x - 35
            
            self.win_lose()
            
        })
    }
    
   
    
    }
    


