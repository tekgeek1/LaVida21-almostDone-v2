//
//  WorkoutSelection.swift
//  LaVida21
//
//  Created by Nathan Simmons on 12/14/18.
//  Copyright © 2018 Nathan Simmons. All rights reserved.
//

import UIKit
import GoogleMobileAds

class WorkoutSelection: UIViewController {
    
    var bannerView: GADBannerView!
    
    @IBOutlet weak var chest_button: UIButton!
    @IBOutlet weak var back_button: UIButton!
    @IBOutlet weak var shoulder_button: UIButton!
    @IBOutlet weak var bicep_workout: UIButton!
    @IBOutlet weak var tricep_workout: UIButton!
    @IBOutlet weak var legs_workout: UIButton!
    @IBOutlet weak var abs_workout: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // In this case, we instantiate the banner with desired ad size.
        bannerView = GADBannerView(adSize: kGADAdSizeBanner)
        addBannerViewToView(bannerView)
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        
        chest_button.layer.cornerRadius = 25
        chest_button.clipsToBounds = true
        chest_button.layer.borderColor = UIColor.white.cgColor
        chest_button.layer.borderWidth = 2
        
        //chest_button.layer.cornerRadius = 45
        //chest_button.layer.masksToBounds = true
        
        back_button.layer.cornerRadius = 25
        back_button.layer.masksToBounds = true
        back_button.layer.borderColor = UIColor.white.cgColor
        back_button.layer.borderWidth = 2
        
        shoulder_button.layer.cornerRadius = 25
        shoulder_button.layer.masksToBounds = true
        shoulder_button.layer.borderColor = UIColor.white.cgColor
        shoulder_button.layer.borderWidth = 2
        
        bicep_workout.layer.cornerRadius = 25
        bicep_workout.layer.masksToBounds = true
        bicep_workout.layer.borderColor = UIColor.white.cgColor
        bicep_workout.layer.borderWidth = 2
        
        tricep_workout.layer.cornerRadius = 25
        tricep_workout.layer.masksToBounds = true
        tricep_workout.layer.borderColor = UIColor.white.cgColor
        tricep_workout.layer.borderWidth = 2
        
        legs_workout.layer.cornerRadius = 25
        legs_workout.layer.masksToBounds = true
        legs_workout.layer.borderColor = UIColor.white.cgColor
        legs_workout.layer.borderWidth = 2
        
        abs_workout.layer.cornerRadius = 25
        abs_workout.layer.masksToBounds = true
        abs_workout.layer.borderColor = UIColor.white.cgColor
        abs_workout.layer.borderWidth = 2

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
