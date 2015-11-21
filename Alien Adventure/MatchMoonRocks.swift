//
//  MatchMoonRocks.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
  
  func matchMoonRocks(inventory: [UDItem]) -> [UDItem] {
    var moonRocks = [UDItem]()
    let itemName = "MoonRock"
    for item in inventory{
      if item.name == itemName{
        moonRocks.append(item)
      }
    }
    return moonRocks
  }
  
}