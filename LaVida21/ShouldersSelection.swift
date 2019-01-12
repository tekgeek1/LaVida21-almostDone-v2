//
//  ShouldersSelection.swift
//  LaVida21
//
//  Created by Nathan Simmons on 12/21/18.
//  Copyright © 2018 Nathan Simmons. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ShouldersSelection: UIViewController {
    
    var bannerView: GADBannerView!

    @IBOutlet weak var logo1: UIButton!
    @IBOutlet weak var TS1: UIButton!
    @IBOutlet weak var TS2: UIButton!
    @IBOutlet weak var TS3: UIButton!
    @IBOutlet weak var Workout1: UIButton!
    @IBOutlet weak var Workout2: UIButton!
    @IBOutlet weak var Workout3: UIButton!
    @IBOutlet weak var Workout4: UIButton!
    @IBOutlet weak var Workout5: UIButton!
    @IBOutlet weak var logo2: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bannerView = GADBannerView(adSize: kGADAdSizeBanner)
        addBannerViewToView(bannerView)
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        
        logo1.layer.cornerRadius = 20
        logo1.layer.masksToBounds = true
        logo1.layer.borderColor = UIColor.white.cgColor
        logo1.layer.borderWidth = 3
        
        logo2.layer.cornerRadius = 20
        logo2.layer.masksToBounds = true
        logo2.layer.borderColor = UIColor.white.cgColor
        logo2.layer.borderWidth = 3
        
        TS1.layer.cornerRadius = 20
        TS1.layer.masksToBounds = true
        TS1.layer.borderColor = UIColor.white.cgColor
        TS1.layer.borderWidth = 3
        
        TS2.layer.cornerRadius = 20
        TS2.layer.masksToBounds = true
        TS2.layer.borderColor = UIColor.white.cgColor
        TS2.layer.borderWidth = 3
        
        TS3.layer.cornerRadius = 20
        TS3.layer.masksToBounds = true
        TS3.layer.borderColor = UIColor.white.cgColor
        TS3.layer.borderWidth = 3
        
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
