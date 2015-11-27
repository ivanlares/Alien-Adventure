//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
  func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
    
    var oldestItem = inventory.first // Holds oldest item
    for item in inventory{
      // Check if item is from desired planet
      if let itemPlanetOfOrigin = item.historicalData["PlanetOfOrigin"] as? String{
        if itemPlanetOfOrigin == planet{
          // Check if 'item' is older than 'oldestItem'
          if let itemCarbonAge = item.historicalData["CarbonAge"] as? Float, oldestItemCarbonAge = oldestItem!.historicalData["CarbonAge"] as? Float{
            if oldestItemCarbonAge < itemCarbonAge{
              oldestItem = item
            }
          }
        }
      }
    }
    
    return oldestItem
  }
  
}