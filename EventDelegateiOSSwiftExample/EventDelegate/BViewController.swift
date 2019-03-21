//
//  BViewController.swift
//  EventDelegateiOSSwiftExample
//
//  Created by Pritesh Patel on 2018-02-26.
//  Copyright © 2018 MoxDroid. All rights reserved.
//

import UIKit

class BViewController: UIViewController {

    weak var delegate: BViewControllerDelegate?
    
    @IBOutlet weak var label: UILabel!
    
    var text: String? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = text

        // Do any additional setup after loading the view.
    }
    
    @IBAction func uppercasePressed(_ sender: Any) {
        label?.text = label?.text?.uppercased()
        delegate?.textChanged(text: label?.text)
        //self.goBack()
    }
    
    
    @IBAction func lowercasePressed(_ sender: Any) {
        label?.text = label?.text?.lowercased()
        delegate?.textChanged(text: label?.text)
        //self.goBack()
    }

    func goBack()
    {
        self.navigationController?.popViewController(animated: true)
    }
}
