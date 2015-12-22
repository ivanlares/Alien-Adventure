//
//  PolicingItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
  
  func policingItems(inventory: [UDItem], policingFilter: UDItem throws -> Void) -> [UDPolicingError:Int] {
    
    var policingErrors: [UDPolicingError:Int] = [
      .ItemFromCunia: 0,
      .NameContainsLaser: 0,
      .ValueLessThan10: 0
    ]
    
    for item in inventory{
      do {
        try policingFilter(item)
      } catch UDPolicingError.ItemFromCunia {
        policingErrors[.ItemFromCunia]! += 1
      } catch UDPolicingError.NameContainsLaser{
        policingErrors[.NameContainsLaser]! += 1
      } catch UDPolicingError.ValueLessThan10{
        policingErrors[.ValueLessThan10]! += 1
      } catch let error as NSError {
        print(error.localizedDescription)
      }
    }
    
    return policingErrors
  }
  
}