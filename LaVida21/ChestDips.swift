//
//  ChestDips.swift
//  LaVida21
//
//  Created by Nathan Simmons on 12/22/18.
//  Copyright © 2018 Nathan Simmons. All rights reserved.
//

import UIKit
import GoogleMobileAds
import CoreData
import Foundation

class ChestDips: UIViewController {
    
    var bannerView: GADBannerView!

    @IBOutlet weak var Workout1: UIImageView!
    @IBOutlet weak var Workout2: UIImageView!
    
    @IBOutlet weak var maxLiftedLabel: UILabel!
    @IBOutlet weak var newMaxLiftedLabel: UITextField!
    
    @IBAction func newWeightLiftedButton(_ sender: UIButton) {
        maxLiftedLabel.text = newMaxLiftedLabel.text
        updateDataGlobal(EntityVar: "Chest", ExeriseNameVar: "Chest Dips", value: maxLiftedLabel.text!)
        self.dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        retrieveDataGlobal(EntityVar: "Chest", ExeriseNameVar: "Chest Dips", value: maxLiftedLabel.text!)
        
        maxLiftedLabel.text = valuetest
        
        bannerView = GADBannerView(adSize: kGADAdSizeBanner)
        addBannerViewToView(bannerView)
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        
        Workout1.layer.cornerRadius = 20
        Workout1.layer.masksToBounds = true
        Workout1.layer.borderColor = UIColor.white.cgColor
        Workout1.layer.borderWidth = 2
        
        Workout2.layer.cornerRadius = 20
        Workout2.layer.masksToBounds = true
        Workout2.layer.borderColor = UIColor.white.cgColor
        Workout2.layer.borderWidth = 2

        // Do any additional setup after loading the view.
    }
    

    func addBannerViewToView(_ bannerView: GADBannerView) {
        bannerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bannerView)
        view.addConstraints(
            [NSLayoutConstraint(item: bannerView,
                                attribute: .bottom,
                                relatedBy: .equal,
                                toItem: bottomLayoutGuide,
                                attribute: .top,
                                multiplier: 1,
                                constant: 0),
             NSLayoutConstraint(item: bannerView,
                                attribute: .centerX,
                                relatedBy: .equal,
                                toItem: view,
                                attribute: .centerX,
                                multiplier: 1,
                                constant: 0)
            ])
    }

}