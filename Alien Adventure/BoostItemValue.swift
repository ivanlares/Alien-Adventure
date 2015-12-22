//
//  BoostItemValue.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
  
  func boostItemValue(inventory: [UDItem]) -> [UDItem] {
    
    let boostedItems =
    inventory.map(){  (item:UDItem) -> UDItem in
        return UDItem(itemID: item.itemID, itemType: item.itemType, name: item.name, baseValue: item.baseValue + 100, inscription: item.inscription, rarity: item.rarity, historicalData: item.historicalData)
      }
    
    return boostedItems
  }
  
}