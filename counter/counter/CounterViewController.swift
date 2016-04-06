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
	
	
	
	@IBOutlet var name: UITextField!
	@IBOutlet var counterLabel: UILabel!
	
	@IBAction func minus(sender: AnyObject) {
		if count >= 1 {
			count = count - 1
		}
		counterLabel.text = String(count)
	}
	
	@IBAction func plus(sender: AnyObject) {
		count = count + 1
		print(count)
		counterLabel.text = String(count)
	}
	
	
	
	
}