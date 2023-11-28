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

        let abc = SumOfAbsoluteDifferencesInSortedArray()
        print(abc.getSumAbsoluteDifferences([1,4,6,8,10]))
    }
}

