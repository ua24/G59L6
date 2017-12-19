//
//  ViewController.swift
//  G59L6
//
//  Created by Ivan Vasilevich on 12/19/17.
//  Copyright © 2017 RockSoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var titleLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		let name = "Ivan"
		let dict = ["Ivan" : "KROSAFCHEG",
					"a" : "b"]
//		print(dict[name])
		titleLabel.text = name + " " + dict[name]!
	}
	
	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
		setTitleText()
	}
	
	func setTitleText() {
		titleLabel.text = "LOL"
	}


	@IBAction func buttonPressed() {
		print(titleLabel.text)
		//взять строку с titleLabel
//		перевести ее к типу Int - получить число
//		добавить к нему +1
//		перевести число в строку
//		присвоить число в titleLabel
	}
	
}

