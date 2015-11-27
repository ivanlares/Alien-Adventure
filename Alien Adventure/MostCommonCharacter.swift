//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
  
  func mostCommonCharacter(inventory: [UDItem]) -> Character? {
    
    var characterCount = [Character:Int]()
    for item in inventory{
      for char in item.name.lowercaseString.characters{
        (characterCount[char] != nil)
          ? (characterCount[char]! += 1)
          : (characterCount[char] = 1 )
      }
    }
    
    var greatestChar: Character? = nil
    var greatestCharCount = 0
    for (char, count) in characterCount{
      if greatestCharCount < count {
        greatestCharCount = count
        greatestChar = char
      }
    }
    
    return greatestChar
  }
  
}