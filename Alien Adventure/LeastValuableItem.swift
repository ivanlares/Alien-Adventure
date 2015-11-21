//
//  LeastValuableItem.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
  func leastValuableItem(inventory: [UDItem]) -> UDItem? {
    
    guard inventory.count != 0 else {return nil}
    
    var lowestValue = inventory.first!.baseValue
    var lowestValueItem: UDItem? = inventory.first
    for item in inventory {
      if item.baseValue < lowestValue {
        lowestValue = item.baseValue
        lowestValueItem = item
      }
    }
    
    return lowestValueItem
  }
  
}