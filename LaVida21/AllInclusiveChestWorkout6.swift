//
//  AllInclusiveChestWorkout6.swift
//  LaVida21
//
//  Created by Nathan Simmons on 12/19/18.
//  Copyright © 2018 Nathan Simmons. All rights reserved.
//

import UIKit
import GoogleMobileAds

class AllInclusiveChestWorkout6: UIViewController {
    

    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var Workout1: UIButton!
    @IBOutlet weak var Workout2: UIButton!
    @IBOutlet weak var Workout3: UIButton!
    @IBOutlet weak var Workout4: UIButton!
    @IBOutlet weak var Workout5: UIButton!
    @IBOutlet weak var workout: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        logo.layer.cornerRadius = 20
        logo.layer.masksToBounds = true
        logo.layer.borderColor = UIColor.white.cgColor
        logo.layer.borderWidth = 3
        
        Workout1.layer.cornerRadius = 20
        Workout1.layer.masksToBounds = true
        Workout1.layer.borderColor = UIColor.white.cgColor
        Workout1.layer.borderWidth = 2
        
        Workout2.layer.cornerRadius = 20
        Workout2.layer.masksToBounds = true
        Workout2.layer.borderColor = UIColor.white.cgColor
        Workout2.layer.borderWidth = 2
        
        Workout3.layer.cornerRadius = 20
        Workout3.layer.masksToBounds = true
        Workout3.layer.borderColor = UIColor.white.cgColor
        Workout3.layer.borderWidth = 2
        
        Workout4.layer.cornerRadius = 20
        Workout4.layer.masksToBounds = true
        Workout4.layer.borderColor = UIColor.white.cgColor
        Workout4.layer.borderWidth = 2
        
        Workout5.layer.cornerRadius = 20
        Workout5.layer.masksToBounds = true
        Workout5.layer.borderColor = UIColor.white.cgColor
        Workout5.layer.borderWidth = 2
        
        workout.layer.cornerRadius = 20
        workout.layer.masksToBounds = true
        workout.layer.borderColor = UIColor.white.cgColor
        workout.layer.borderWidth = 2

        // Do any additional setup after loading the view.
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
