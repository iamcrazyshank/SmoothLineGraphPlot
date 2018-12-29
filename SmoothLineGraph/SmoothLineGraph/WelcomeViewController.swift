//
//  WelcomeViewController.swift
//  SmoothLineGraph
//
//  Created by Shashank Chandran on 12/27/18.
//  Copyright © 2018 Shashank Chandran. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Point5.text="0"
        Point4.text="0"
        Point3.text="0"
        Point2.text="0"
        Point1.text="0"
        // varany additional setup after loading the view.
       self.hideKeyboardWhenTappedAround()
    }
    
   
    @IBOutlet weak var Point1: UITextField!
    @IBOutlet weak var Point2: UITextField!
    @IBOutlet weak var Point3: UITextField!
    @IBOutlet weak var Point4: UITextField!
    @IBOutlet weak var Point5: UITextField!

  
    @IBAction func plotGraph(_ sender: Any) {
        
     
                
                performSegue(withIdentifier: "sendPoints", sender: self)
      
        
        
            
        }
   
        
   
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        let graphVC = segue.destination as! ViewController
        let P1: Int? = 255 - Int(Point1.text!)!
        let P2: Int? = 255 - Int(Point2.text!)!
        let P3: Int? = 255 - Int(Point3.text!)!
        let P4: Int? = 255 - Int(Point4.text!)!
        let P5: Int? = 255 - Int(Point5.text!)!
        let PlotPoints=[P1!,P2!,P3!,P4!,P5!]
        
        
        graphVC.dataPoints=PlotPoints
        
    }
   
    
   

}
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer =     UITapGestureRecognizer(target: self, action:    #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
