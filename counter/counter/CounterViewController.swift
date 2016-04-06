//
//  CounterViewController.swift
//  counter
//
//  Created by Nithi Prasanpanich on 4/5/16.
//  Copyright © 2016 Yuchi. All rights reserved.
//

import UIKit


class CounterViewController: UIViewController {
	
	var count = 0
	var item: Item!
	var itemStore:ItemStore!
	
	

	
	
	@IBOutlet var name: UITextField!
	@IBOutlet var counterLabel: UILabel!
	
	@IBAction func minus(sender: AnyObject) {
		if item.count >= 1 {
			item.count = item.count - 1
		}
		counterLabel.text = String(item.count)
	}
	
	@IBAction func plus(sender: AnyObject) {
		item.count = item.count + 1
		counterLabel.text = String(item.count)
	}
	
	override func viewWillAppear(animated: Bool) {
		super.viewWillAppear(animated)
		name.text = item.name
		counterLabel.text = String(item.count)
	}
	
	override func viewWillDisappear(animated: Bool) {
		super.viewWillDisappear(animated)
		item.name = name.text ?? "Untitled"
	}
	
	
		
	
	
	
}