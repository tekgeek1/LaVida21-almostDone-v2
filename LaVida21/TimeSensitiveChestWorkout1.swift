//
//  TimeSensitiveChestWorkout1.swift
//  LaVida21
//
//  Created by Nathan Simmons on 12/16/18.
//  Copyright © 2018 Nathan Simmons. All rights reserved.
//

import UIKit
import GoogleMobileAds

class TimeSensitiveChestWorkout1: UIViewController {
    var bannerView: GADBannerView!
    var Pressed: String!
    
    
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var Workout1: UIButton!
    @IBOutlet weak var Workout2: UIButton!
    @IBOutlet weak var Workout3: UIButton!
    
    @IBAction func didPressButton(sender:  AnyObject) {
        Pressed = "DumbbellPress"
        print ("*******  Dumbbell button pressed: ", Pressed!)
    }
    
    @IBAction func inclineDumbbellPress(_ sender: Any) {
        Pressed = "inclineViewController"
        print (Pressed)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bannerView = GADBannerView(adSize: kGADAdSizeBanner)
        addBannerViewToView(bannerView)
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())

        // Do any additional setup after loading the view.
        logo.layer.cornerRadius = 25
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
