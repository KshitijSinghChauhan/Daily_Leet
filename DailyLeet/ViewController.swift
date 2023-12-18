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

        let abc = MaximumProductDifferenceBetweenTwoPairs()
        print(abc.maxProductDifference([1,6,7,5,2,4,10,6,4]))
    }
}

