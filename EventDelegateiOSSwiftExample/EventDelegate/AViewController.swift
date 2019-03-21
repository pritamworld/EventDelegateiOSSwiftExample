//
//  ViewController.swift
//  EventDelegateiOSSwiftExample
//
//  Created by Pritesh Patel on 2018-02-26.
//  Copyright © 2018 MoxDroid. All rights reserved.
//

import UIKit

//http://www.thomashanning.com/passing-data-between-view-controllers/

//http://matteomanferdini.com/how-ios-view-controllers-communicate-with-each-other/
class AViewController: UIViewController, BViewControllerDelegate {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewControllerB = segue.destination as? BViewController {
            viewControllerB.text = textField.text
            viewControllerB.delegate = self
        }
    }
    
    func textChanged(text: String?) {
        textField.text = text
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

