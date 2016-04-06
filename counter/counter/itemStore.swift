 //
//  itemStore.swift
//  counter
//
//  Created by Nithi Prasanpanich on 4/5/16.
//  Copyright © 2016 Yuchi. All rights reserved.
//

import UIKit

class ItemStore {

	var allItems = [Item]()
	
	func createItem() -> Item {
		let newItem = Item(name: "Untitled", count: 0)
		
		allItems.append(newItem)
		return newItem
		
	}
	
	
	
	
	
	

}
