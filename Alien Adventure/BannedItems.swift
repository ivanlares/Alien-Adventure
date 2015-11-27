//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
  
  func bannedItems(dataFile: String) -> [Int] {
    
    guard let dataFileURL =
      NSBundle.mainBundle().URLForResource(dataFile, withExtension: "plist"),
      itemList = NSArray(contentsOfURL: dataFileURL) else {
        print("Error accessing \(dataFile)")
        return [Int]()
    }
    
    var banndedItemIds = [Int]()
    for item in itemList{
      guard let itemName = (item.objectForKey("Name") as? String)?.lowercaseString else {
        print("Error accessing data for: \(item)")
        break
      }
      guard let historicalData = item.objectForKey("HistoricalData") as? [String:AnyObject] else {
        print("Error accessing data for: \(item)")
        break
      }
      guard let carbonAge = historicalData["CarbonAge"] as? Float  else {
        print("Error accessing data for: \(item)")
        break
      }
      guard let itemId = item.objectForKey("ItemID") as? Int else{
        print("Error accessing data for: \(item)")
        break
      }
      
      if itemName.containsString("laser") && carbonAge < 30 {
        banndedItemIds.append(itemId)
      }
    }

    return banndedItemIds
  }
  
}