//
//  item.swift
//  counter
//
//  Created by Nithi Prasanpanich on 4/5/16.
//  Copyright © 2016 Yuchi. All rights reserved.
//

import UIKit

class Item : NSObject {
	
	var name : String
	var count : Int
	
	
	
	init ( name: String, count: Int ) {
		self.name = name
		self.count = count
		super.init()
	}
	

	
	
}
