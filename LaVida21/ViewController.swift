//
//  ViewController.swift
//  LaVida21
//
//  Created by Nathan Simmons on 12/14/18.
//  Copyright © 2018 Nathan Simmons. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var DietButton: UIButton!
    @IBOutlet weak var WorkoutButton: UIButton!
    @IBOutlet weak var OtherButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        DietButton.layer.cornerRadius = 10
        DietButton.layer.masksToBounds = true
        DietButton.layer.borderColor = UIColor.white.cgColor
        DietButton.layer.borderWidth = 2
        
        OtherButton.layer.cornerRadius = 10
        OtherButton.layer.masksToBounds = true
        OtherButton.layer.borderColor = UIColor.white.cgColor
        OtherButton.layer.borderWidth = 2
        
        WorkoutButton.layer.cornerRadius = 10
        WorkoutButton.layer.masksToBounds = true
        WorkoutButton.layer.borderColor = UIColor.white.cgColor
        WorkoutButton.layer.borderWidth = 2
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
