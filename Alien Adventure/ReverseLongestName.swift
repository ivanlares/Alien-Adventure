//
//  ReverseLongestName.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
  
  func reverseLongestName(inventory: [UDItem]) -> String {
    
    // Get the longest Name
    var longestName = ""
    for item in inventory{
      if longestName.characters.count < item.name.characters.count{
        longestName = item.name
      }
    }
    
    // Reverse longestName
    let reversedCharacters = longestName.characters.reverse() as [Character]
    return String(reversedCharacters)
  }
  
}