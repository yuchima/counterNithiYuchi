//
//  CounterViewController.swift
//  counter
//
//  Created by Nithi Prasanpanich on 4/5/16.
//  Copyright © 2016 Yuchi. All rights reserved.
//

import UIKit


class CounterViewController: UIViewController {
	

	@IBOutlet var counterName: UITextField!

	@IBOutlet var counterLabel: UILabel!
	
	
	@IBAction func minus(sender: AnyObject) {
		print("minus")
	}
	
	
	@IBAction func plus(sender: AnyObject) {
		print("plus")
	}
	
	
}