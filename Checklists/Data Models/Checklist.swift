//
//  Checklist.swift
//  Checklists
//
//  Created by Richard Castagna on 5/28/19.
//  Copyright © 2019 Rich Castagna. All rights reserved.
//

import UIKit

class Checklist: NSObject, Codable {
  var name = ""
  var items = [ChecklistItem]()
  var iconName = "No Icon"

  
  init(name: String, iconName: String = "No Icon") {
    self.name = name
    self.iconName = iconName
    super.init()
  }
  
  func countUncheckedItems() -> Int {
    var count = 0
    for item in items where !item.checked {
      count += 1
    }
    return count
  }
  
  func sortChecklistItems() {
    items.sort(by: { item1, item2 in return item1.dueDate.compare(item2.dueDate) == .orderedAscending })
  }
}
