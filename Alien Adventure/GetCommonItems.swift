//
//  GetCommonItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
  
  func getCommonItems(inventory: [UDItem]) -> [UDItem] {
    
    let commonItems = inventory.reduce([UDItem]()){ (var array, item) -> [UDItem] in
      if item.rarity.hashValue == UDItemRarity.Common.hashValue{
        array.append(item)
      }
      return array
    }
    // Note: `filter` can also be used
    
    return commonItems
  }
  
}