//
//  CheckBadges.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
  
  func checkBadges(badges: [Badge], requestTypes: [UDRequestType]) -> Bool {
    
    var typesToCheck = requestTypes
    for badge in badges{
      if let index = typesToCheck.indexOf(badge.requestType){
        typesToCheck.removeAtIndex(index)
      }
    }
    
    return typesToCheck.isEmpty
  }
  
}