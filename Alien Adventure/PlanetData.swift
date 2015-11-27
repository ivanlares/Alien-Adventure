//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
  
  func planetData(dataFile: String) -> String {
    
    guard let url = NSBundle.mainBundle().URLForResource("PlanetData", withExtension: "json"),
      jsonData = NSData(contentsOfURL: url) else {
        return String()
    }
    
    var highestScore = 0
    var planetName = ""
    
    do {
      let detectedPlanets = try NSJSONSerialization.JSONObjectWithData(jsonData, options: NSJSONReadingOptions.AllowFragments) as? [[String:AnyObject]]
      if let detectedPlanets = detectedPlanets{
        for planet in detectedPlanets{
          let name = planet["Name"] as! String
          let commonItem = planet["CommonItemsDetected"] as! Int
          let uncommonItem = planet["UncommonItemsDetected"] as! Int
          let rareItem = planet["RareItemsDetected"] as! Int
          let legendaryItem = planet["LegendaryItemsDetected"] as! Int
          let score = commonItem*1 + uncommonItem*2 + rareItem*3 + legendaryItem*4
          if highestScore < score {
            highestScore = score
            planetName = name
          }
        }
      }
    } catch let error as NSError{
      print(error.localizedDescription)
    }
    
    return planetName
  }
  
}