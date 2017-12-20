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
		print(titleLabel.text!)
//		//взять строку с titleLabel
//		let stringFromLabel = titleLabel.text
//		//		перевести ее к типу Int - получить число
//		let intFromLabel = Int(stringFromLabel ?? "0")
//		//		добавить к нему +1
//		let result = (intFromLabel ?? 0) + 1
//		//		перевести число в строку
//		let stringResult = String(result)//result.description//"\(result)"
//		//		присвоить число в titleLabel
//		titleLabel.text = stringResult
		
		titleLabel.text = ((Int(titleLabel.text ?? "0") ?? 0) + 1).description
	}
	
	@IBAction func digitButtonPressed(_ sender: UIButton) {
		print(sender.titleLabel?.text)
		print(self.titleLabel?.text)
	}
	
	
	@IBAction func counterChange(_ sender: UIButton) {
//		var a = 0
//		if sender.tag == 0 {
//			print("-1")
//			a = -1
//		}
//		else {
//			print("+1")
//			a = +1
//		}
		sender.tag == 0 ? print("-1") : print("+1")
		let a = sender.tag == 0 ? -1 : +1
		titleLabel.text = ((Int(titleLabel.text ?? "0") ?? 0) + a).description
	}
	
}

