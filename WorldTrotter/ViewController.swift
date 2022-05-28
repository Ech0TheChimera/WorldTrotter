//
//  ViewController.swift
//  WorldTrotter
//
//  Created by Aaron Whittington on 5/25/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create the gradient
        let myGradient: CAGradientLayer = CAGradientLayer()
        
        // Make the Gradient layer take up the whole frame of our view
        myGradient.frame = view.bounds
        
        // Set the Colors array values
        myGradient.colors = [UIColor.red.cgColor,
            UIColor.systemPink.cgColor,
            UIColor.systemOrange.cgColor]
        
        // Find our view -- Find its parent Layer -- Add the gradient to the Layer as a Sub-Layer
        view.layer.addSublayer(myGradient)
        
        // Set our layer's position in the layer heiarchy to 0 -- The back.
        view.layer.insertSublayer(myGradient, at: 0)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
    }
    
}

