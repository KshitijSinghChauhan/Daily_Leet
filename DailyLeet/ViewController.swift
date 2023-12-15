//
//  ViewController.swift
//  DailyLeet
//
//  Created by Kshitij Singh Chauhan on 24/11/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let abc = DestinationCity()
        print(abc.destCity([["London","New York"],["New York","Lima"],["Lima","Sao Paulo"]]))
    }
}

