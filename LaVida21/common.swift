//  Common.swift
//  LaVida21
//
//  Created by Simmons, Bruce Q. on 1/8/19.
//  Copyright © 2019 Nathan Simmons. All rights reserved.
//

import Foundation
import UIKit
import CoreData

var valuetest = ""

//public protocol WeightProtocol {
//    func updateDataGlobal(EntityVar: String, ExeriseNameVar: String, value:String)
//    func retrieveDataGlobal(EntityVar: String, ExeriseNameVar: String, value:String)
//}


public func testCommon (){
    print (" <--------  TestCommon")
}


func retrieveDataGlobal(EntityVar: String, ExeriseNameVar: String, value:String) {
    print ("COMMON")
    print ("**COMMON*** in gloabl retrieve function....")
    print ("**COMMON* Exercise Entity: ", EntityVar)
    print("**COMMON* Exercise Name: ", ExeriseNameVar)
    print("**COMMON* Exercise data: ", value)
    
    guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
    let managedContext = appDelegate.persistentContainer.viewContext
    
    let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: EntityVar)
    
    fetchRequest.fetchLimit = 5
    fetchRequest.predicate = NSPredicate(format: "name = %@", ExeriseNameVar)
    
    let count = try! managedContext.count(for: fetchRequest)
    print ("COMMON retrieveDataGlobal record count: ", count)
    if (count == 0){
        print ("COMMON Retrive Data - calling create data")
        createData(Entity: EntityVar,ExeriseName: ExeriseNameVar)
    }
    print (count)
    
    do {
        let result = try managedContext.fetch(fetchRequest)
        
        for data in result as! [NSManagedObject] {
            print("COMMON ********** Data Retrieved - weight:  ", data.value(forKey: "weight") as! String)
            valuetest = data.value(forKey: "weight") as! String
            print ("COMMON +++++++++++++  valuetest: ", valuetest)
        }
    } catch {
        print("COMMON Failed")
    }
}


func createData(Entity: String, ExeriseName: String){
    print ("Create Data --- ", Entity, " -  ",ExeriseName)
    
    guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
    let managedContext = appDelegate.persistentContainer.viewContext
    let userEntity = NSEntityDescription.entity(forEntityName: Entity, in: managedContext)!
    
    let user = NSManagedObject(entity: userEntity, insertInto: managedContext)
    user.setValue(ExeriseName, forKeyPath: "name")
    user.setValue("No Data", forKey: "weight")
    
    do {
        try managedContext.save()
        print("Data saved")
    } catch let error as NSError {
        print("Could not save. \(error), \(error.userInfo)")
    }
}


func updateDataGlobal(EntityVar: String, ExeriseNameVar: String, value:String){
    print ("COMMON")
    print ("*COMMON** Exercise Entity: ", EntityVar)
    print("**COMMON* Exercise Name: ", ExeriseNameVar)
    print("**COMMON* Exercise data: ", value)
    
    guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
    let managedContext = appDelegate.persistentContainer.viewContext
    
    let fetchRequest:NSFetchRequest<NSFetchRequestResult> = NSFetchRequest.init(entityName: EntityVar)
    fetchRequest.predicate = NSPredicate(format: "name = %@", ExeriseNameVar)
    do
    {
        let test = try managedContext.fetch(fetchRequest)
        let objectUpdate = test[0] as! NSManagedObject
        objectUpdate.setValue(value, forKey: "weight")
        do{
            try managedContext.save()
            print ("COMMON Record Updated: ",value, " for: ", ExeriseNameVar)
        }
        catch
        {
            print("COMMON Error: ",error)
        }
    }
    catch
    {
        print(error)
    }
}

