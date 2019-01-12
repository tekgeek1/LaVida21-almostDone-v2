//
//  LegWorkout4.swift
//  LaVida21
//
//  Created by Nathan Simmons on 12/28/18.
//  Copyright © 2018 Nathan Simmons. All rights reserved.
//

import UIKit
import GoogleMobileAds

class LegWorkout4: UIViewController {
    
    var bannerView: GADBannerView!

    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var Workout1: UIButton!
    @IBOutlet weak var Workout2: UIButton!
    @IBOutlet weak var Workout3: UIButton!
    @IBOutlet weak var Workout4: UIButton!
    @IBOutlet weak var Workout5: UIButton!
    @IBOutlet weak var Workout: UIButton!
    @IBOutlet weak var Workout7: UIButton!
    @IBOutlet weak var Workout8: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bannerView = GADBannerView(adSize: kGADAdSizeBanner)
        addBannerViewToView(bannerView)
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        
        logo.layer.cornerRadius = 20
        logo.layer.masksToBounds = true
        logo.layer.borderColor = UIColor.white.cgColor
        logo.layer.borderWidth = 2
        
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
        
        Workout.layer.cornerRadius = 20
        Workout.layer.masksToBounds = true
        Workout.layer.borderColor = UIColor.white.cgColor
        Workout.layer.borderWidth = 2
        
        Workout7.layer.cornerRadius = 20
        Workout7.layer.masksToBounds = true
        Workout7.layer.borderColor = UIColor.white.cgColor
        Workout7.layer.borderWidth = 2
        
        Workout8.layer.cornerRadius = 20
        Workout8.layer.masksToBounds = true
        Workout8.layer.borderColor = UIColor.white.cgColor
        Workout8.layer.borderWidth = 2

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
