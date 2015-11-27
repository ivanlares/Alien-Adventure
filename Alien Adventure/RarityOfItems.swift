//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
  
  func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
    
    var rarity:[UDItemRarity:Int] =
      [.Common:0, .Uncommon:0, .Rare:0, .Legendary:0]
    
    for item in inventory{
      switch item.rarity{
      case .Common:
         (rarity[.Common]! += 1)
      case .Uncommon:
         (rarity[.Uncommon]! += 1)
      case .Rare:
         (rarity[.Rare]! += 1)
      case .Legendary:
         (rarity[.Legendary]! += 1)
      }
    }
    
    return rarity
  }
  
}