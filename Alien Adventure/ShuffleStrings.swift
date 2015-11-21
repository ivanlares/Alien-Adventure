//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
  func shuffleStrings(s1 s1: String, s2: String, shuffle: String) -> Bool {
    if s1.isEmpty && s2.isEmpty && shuffle.isEmpty {
      return true
    }
    guard ((s1+s2).characters.count == shuffle.characters.count) else {
      return false
    }
    
    var s1FromShuffle = String()
    var s2FromShuffle = String()
    
    for char in shuffle.characters{
      if s1.containsString("\(char)"){
        s1FromShuffle.append(char)
      }
      if s2.containsString("\(char)"){
        s2FromShuffle.append(char)
      }
    }
    
    if s1FromShuffle == s1 && s2FromShuffle == s2{
      return true
    }
    return false
  }
  
}