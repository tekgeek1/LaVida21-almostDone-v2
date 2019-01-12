import UIKit
import GoogleMobileAds

class ChestWorkout: UIViewController {
    
    var bannerView: GADBannerView!
    
    @IBOutlet weak var TimeWorkout1: UIButton!
    @IBOutlet weak var TimeWorkout2: UIButton!
    @IBOutlet weak var TimeWorkout3: UIButton!
    @IBOutlet weak var TimeWorkout4: UIButton!
    @IBOutlet weak var Upper1: UIButton!
    @IBOutlet weak var Upper2: UIButton!
    @IBOutlet weak var Upper3: UIButton!
    @IBOutlet weak var Lower1: UIButton!
    @IBOutlet weak var Lower2: UIButton!
    @IBOutlet weak var Lower3: UIButton!
    @IBOutlet weak var All1: UIButton!
    @IBOutlet weak var All2: UIButton!
    @IBOutlet weak var All3: UIButton!
    @IBOutlet weak var All4: UIButton!
    @IBOutlet weak var All5: UIButton!
    @IBOutlet weak var All6: UIButton!
    @IBOutlet weak var TimeWorkoutImage: UIButton!
    @IBOutlet weak var LowerChestWorkoutSelection: UIButton!
    @IBOutlet weak var UpperChestWorkoutImage: UIButton!
    @IBOutlet weak var AllinclusivechestWorkout: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bannerView = GADBannerView(adSize: kGADAdSizeBanner)
        addBannerViewToView(bannerView)
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        
        AllinclusivechestWorkout.layer.cornerRadius = 25
        AllinclusivechestWorkout.layer.masksToBounds = true
        AllinclusivechestWorkout.layer.borderColor = UIColor.white.cgColor
        AllinclusivechestWorkout.layer.borderWidth = 3
        
        LowerChestWorkoutSelection.layer.cornerRadius = 25
        LowerChestWorkoutSelection.layer.masksToBounds = true
        LowerChestWorkoutSelection.layer.borderColor = UIColor.white.cgColor
        LowerChestWorkoutSelection.layer.borderWidth = 3
        
        UpperChestWorkoutImage.layer.cornerRadius = 25
        UpperChestWorkoutImage.layer.masksToBounds = true
        UpperChestWorkoutImage.layer.borderColor = UIColor.white.cgColor
        UpperChestWorkoutImage.layer.borderWidth = 3
        
        TimeWorkoutImage.layer.cornerRadius = 25
        TimeWorkoutImage.layer.masksToBounds = true
        TimeWorkoutImage.layer.borderColor = UIColor.white.cgColor
        TimeWorkoutImage.layer.borderWidth = 3
        
        TimeWorkout1.layer.cornerRadius = 25
        TimeWorkout1.layer.masksToBounds = true
        TimeWorkout1.layer.borderColor = UIColor.white.cgColor
        TimeWorkout1.layer.borderWidth = 2
        
        TimeWorkout2.layer.cornerRadius = 25
        TimeWorkout2.layer.masksToBounds = true
        TimeWorkout2.layer.borderColor = UIColor.white.cgColor
        TimeWorkout2.layer.borderWidth = 2
        
        TimeWorkout3.layer.cornerRadius = 25
        TimeWorkout3.layer.masksToBounds = true
        TimeWorkout3.layer.borderColor = UIColor.white.cgColor
        TimeWorkout3.layer.borderWidth = 2
        
        TimeWorkout4.layer.cornerRadius = 25
        TimeWorkout4.layer.masksToBounds = true
        TimeWorkout4.layer.borderColor = UIColor.white.cgColor
        TimeWorkout4.layer.borderWidth = 2
        
        Upper1.layer.cornerRadius = 25
        Upper1.layer.masksToBounds = true
        Upper1.layer.borderColor = UIColor.white.cgColor
        Upper1.layer.borderWidth = 2
        
        Upper2.layer.cornerRadius = 25
        Upper2.layer.masksToBounds = true
        Upper2.layer.borderColor = UIColor.white.cgColor
        Upper2.layer.borderWidth = 2
        
        Upper3.layer.cornerRadius = 25
        Upper3.layer.masksToBounds = true
        Upper3.layer.borderColor = UIColor.white.cgColor
        Upper3.layer.borderWidth = 2
        
        Lower1.layer.cornerRadius = 25
        Lower1.layer.masksToBounds = true
        Lower1.layer.borderColor = UIColor.white.cgColor
        Lower1.layer.borderWidth = 2
        
        
        Lower2.layer.cornerRadius = 25
        Lower2.layer.masksToBounds = true
        Lower2.layer.borderColor = UIColor.white.cgColor
        Lower2.layer.borderWidth = 2
        
        Lower3.layer.cornerRadius = 25
        Lower3.layer.masksToBounds = true
        Lower3.layer.borderColor = UIColor.white.cgColor
        Lower3.layer.borderWidth = 2
        
        All1.layer.cornerRadius = 25
        All1.layer.masksToBounds = true
        All1.layer.borderColor = UIColor.white.cgColor
        All1.layer.borderWidth = 2
        
        All2.layer.cornerRadius = 25
        All2.layer.masksToBounds = true
        All2.layer.borderColor = UIColor.white.cgColor
        All2.layer.borderWidth = 2
        
        All3.layer.cornerRadius = 25
        All3.layer.masksToBounds = true
        All3.layer.borderColor = UIColor.white.cgColor
        All3.layer.borderWidth = 2
        
        All4.layer.cornerRadius = 25
        All4.layer.masksToBounds = true
        All4.layer.borderColor = UIColor.white.cgColor
        All4.layer.borderWidth = 2
        
        All5.layer.cornerRadius = 25
        All5.layer.masksToBounds = true
        All5.layer.borderColor = UIColor.white.cgColor
        All5.layer.borderWidth = 2
        
        
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

