//
//  CounterListViewController.swift
//  counter
//
//  Created by Nithi Prasanpanich on 4/5/16.
//  Copyright © 2016 Yuchi. All rights reserved.
//

import UIKit

class CounterListViewController: UITableViewController {

	var itemStore: ItemStore!
	
	
	@IBAction func addItem(sender: AnyObject) {
 
		itemStore.createItem()
		tableView.reloadData()
		print(itemStore.allItems)
	}
	
	
	override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
		
		
		let cell = tableView.dequeueReusableCellWithIdentifier("UITableViewCell", forIndexPath: indexPath)
		
		let item = itemStore.allItems[indexPath.row]
		cell.textLabel?.text = item.name
		cell.detailTextLabel?.text = "\(item.count)"
		
	
		return cell
		
		
	}
	
	

	override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
		return itemStore.allItems.count
	}
	
	
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		if segue.identifier == "ShowItem" {
			if let row = tableView.indexPathForSelectedRow?.row {
				let item = itemStore.allItems[row]
				let counterViewController = segue.destinationViewController as! CounterViewController
				counterViewController.item = item
			}
		}
	}
	

	
	
	
	override func viewWillAppear(animated: Bool) {
		super.viewWillAppear(animated)
		//itemStore.createItem()
		tableView.reloadData()
	}
	
	
	
}