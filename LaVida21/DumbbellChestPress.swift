//
//  DumbbellChestPress.swift
//  LaVida21
//
//  Created by Nathan Simmons on 12/22/18.
//  Copyright © 2018 Nathan Simmons. All rights reserved.
//

import UIKit
import GoogleMobileAds
import CoreData


extension UIViewController {
    
    func HideKeyboard() {
        let Tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(DismissKeyboard))
        view.addGestureRecognizer(Tap)
    }
    @objc func DismissKeyboard() {
        view.endEditing(true)
    }
}

class DumbbellChestPress: UIViewController {
    var bannerView: GADBannerView!

    @IBOutlet weak var newMaxLiftText: UITextField!
    @IBOutlet weak var newMaxLiftLabel: UILabel!
    @IBOutlet weak var maxWeightLiftedLabel: UILabel!
    @IBAction func newWeightButon(_ sender: UIButton) {
        maxWeightLiftedLabel.text = newMaxLiftText.text
        updateDataGlobal(EntityVar: "Chest", ExeriseNameVar: "Dumbell Chest Press", value: maxWeightLiftedLabel.text!)
        self.dismiss(animated: true, completion: nil)
 //       updateData()
    }
    
    @IBAction func delerteDataBtton(_ sender: UIButton) {
        deleteData()
    }
    
    @IBAction func loadDataButton(_ sender: UIButton) {
        createData()
    }
    
    @IBOutlet weak var Workout1: UIImageView!
    @IBOutlet weak var Workout2: UIImageView!
    
    @IBOutlet weak var Workout4: UIImageView!
    @IBOutlet weak var Workout3: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.HideKeyboard()
        
        retrieveDataGlobal(EntityVar: "Chest", ExeriseNameVar: "Dumbell Chest Press", value: maxWeightLiftedLabel.text!)
        maxWeightLiftedLabel.text = valuetest
        
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

    func updateData(){
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let fetchRequest:NSFetchRequest<NSFetchRequestResult> = NSFetchRequest.init(entityName: "Chest")
        fetchRequest.predicate = NSPredicate(format: "name = %@", "Dumbell Chest Press")
        do
        {
            let test = try managedContext.fetch(fetchRequest)
            
            let objectUpdate = test[0] as! NSManagedObject
            print("Update data weightTextFeild: ", newMaxLiftText.text!)
            objectUpdate.setValue(maxWeightLiftedLabel.text!, forKey: "weight")
            do{
                try managedContext.save()
                print ("Record Updated")
            }
            catch
            {
                print("Error: ",error)
            }
        }
        catch
        {
            print(error)
        }
        
    }
    
    
    func retrieveData() {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Chest")
    
        fetchRequest.fetchLimit = 5
        fetchRequest.predicate = NSPredicate(format: "name = %@", "Dumbell Chest Press")
        
        let count = try! managedContext.count(for: fetchRequest)
        if (count == 0){
            createData()
        }
        print (count)
        
        do {
            let result = try managedContext.fetch(fetchRequest)
            
            for data in result as! [NSManagedObject] {
                print("Data Retrieved - weight:  ", data.value(forKey: "weight") as! String)
                maxWeightLiftedLabel.text = data.value(forKey: "weight") as? String
            }
            
        } catch {
            print("Failed")
        }
    }
    
    
    func createData(){
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        let managedContext = appDelegate.persistentContainer.viewContext
        let userEntity = NSEntityDescription.entity(forEntityName: "Chest", in: managedContext)!
        
        //      for i in 1...5 {
        
        let user = NSManagedObject(entity: userEntity, insertInto: managedContext)
        user.setValue("Dumbell Chest Press", forKeyPath: "name")
        user.setValue("", forKey: "weight")
        //      }
        
        //Now we have set all the values. The next step is to save them inside the Core Data
        
        do {
            try managedContext.save()
            print("Data saved")
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
    }
    
    
    func deleteData(){
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Chest")
        fetchRequest.predicate = NSPredicate(format: "name = %@", "Dumbell Chest Press")
        
        do
        {
            let test = try managedContext.fetch(fetchRequest)
            let objectToDelete = test[0] as! NSManagedObject
            managedContext.delete(objectToDelete)
            do{
                try managedContext.save()
                print ("Record Deleted")
            }
            catch
            {
                print(error)
            }
        }
        catch
        {
            print(error)
        }

    }
    
    
}
