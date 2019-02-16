//
//  randomm.swift
//  Proect
//
//  Created by Академия ШАГ on 2/1/19.
//  Copyright © 2019 Yukine. All rights reserved.
//

import UIKit
import Spring

class randomm: UIViewController {

    var b = 0
    var a = ["Да","Нет","Незнаю","Скорее всего да","Я думаю что нет","?","Угу","Согласен","Да нет","50 на 50"]
    

    @IBOutlet weak var ladel: UILabel!
    
    @IBOutlet weak var vvieew: SpringView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.becomeFirstResponder()
        
    }
    
    
    
    override var canBecomeFirstResponder: Bool {
        get {
            return true
        }
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            self.ladel.text = a[b]
            
            self.vvieew.animation = "swing"
            self.vvieew.animate()
        }
    }
   
    
    
    
    
    
    @IBAction func randoon(_ sender: Any) {
        b = Int.random(in: 1..<10)
        self.ladel.text = a[b]
        
        
        
        
     self.vvieew.animation = "swing"
     self.vvieew.animate()
    }
    
    

}
