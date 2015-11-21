//
//  InscriptionEternalStar.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
  func inscriptionEternalStar(inventory: [UDItem]) -> UDItem? {
    
    for item in inventory where item.inscription != nil {
      if item.inscription!.containsString("THE ETERNAL STAR"){
        return item
      }
    }
    return nil
  }
  
}