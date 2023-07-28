//
//  ViewController+CoreData.swift
//  MyGames
//
//  Created by Kato on 27/07/23.
//

import Foundation

import UIKit
import CoreData

extension UIViewController {
    
    var context: NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
}
