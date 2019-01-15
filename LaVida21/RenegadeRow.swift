//
//  RenegadeRow.swift
//  LaVida21
//
//  Created by Nathan Simmons on 12/26/18.
//  Copyright © 2018 Nathan Simmons. All rights reserved.
//

import UIKit

class RenegadeRow: UIViewController {

    @IBOutlet weak var Workout1: UIImageView!
    @IBOutlet weak var Workout2: UIImageView!
    @IBOutlet weak var Workout3: UIImageView!
    @IBOutlet weak var Workout4: UIImageView!
    
    @IBOutlet weak var maxLiftedLabel: UILabel!
    @IBOutlet weak var newMaxLiftedText: UITextField!
    @IBAction func newWeightLiftedButton(_ sender: UIButton) {
        maxLiftedLabel.text = newMaxLiftedText.text
        updateDataGlobal(EntityVar: "Back", ExeriseNameVar: "Renegade Row", value: maxLiftedLabel.text!)
        self.dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.HideKeyboard()
        
        retrieveDataGlobal(EntityVar: "Back", ExeriseNameVar: "Renegade Row", value: maxLiftedLabel.text!)
        
        maxLiftedLabel.text = valuetest
        
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
