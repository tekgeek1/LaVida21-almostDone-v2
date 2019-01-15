//
//  CableLowRows.swift
//  LaVida21
//
//  Created by Nathan Simmons on 12/26/18.
//  Copyright © 2018 Nathan Simmons. All rights reserved.
//

import UIKit
import CoreData


class CableLowRows: UIViewController {

    @IBOutlet weak var maxLiftedLabel: UILabel!
    @IBOutlet weak var newMaxLiftedText: UITextField!
    
    @IBAction func newWeightLiftedButton(_ sender: UIButton) {
        maxLiftedLabel.text = newMaxLiftedText.text
        updateDataGlobal(EntityVar: "Back", ExeriseNameVar: "Seated Cable Low Row", value: maxLiftedLabel.text!)
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.HideKeyboard()

        retrieveDataGlobal(EntityVar: "Back", ExeriseNameVar: "Seated Cable Low Row", value: maxLiftedLabel.text!)
        
        maxLiftedLabel.text = valuetest
        
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
