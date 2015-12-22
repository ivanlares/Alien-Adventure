//
//  SortLeastToGreatest.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
  
  func sortLeastToGreatest(inventory: [UDItem]) -> [UDItem] {
    
    var itemsToSort = inventory
    itemsToSort.sortInPlace(){ (first:UDItem, second:UDItem) -> Bool in
      if (first.rarity.rawValue < second.rarity.rawValue){
        return true
      } else if (first.rarity.rawValue == second.rarity.rawValue){
        return (first.baseValue < second.baseValue)
      }
      return false
    }
  
    return itemsToSort
  }
  
}