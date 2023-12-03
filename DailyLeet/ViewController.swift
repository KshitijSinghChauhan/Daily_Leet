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

        let abc = MinimumTimeVisitingAllPoints()
        print(abc.minTimeToVisitAllPoints([[1,1],[3,4],[-1,0]]))
    }
}

