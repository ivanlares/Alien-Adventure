//
//  TotalBaseValue.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
  
  func totalBaseValue(inventory: [UDItem]) -> Int {
    
    let combinedBaseValue = inventory.reduce(0){ (value: Int, item:UDItem) -> Int in
      return value + item.baseValue
    }
    
    return combinedBaseValue
  }
  
}