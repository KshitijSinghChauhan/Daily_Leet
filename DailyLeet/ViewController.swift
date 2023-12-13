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

        let abc = SpecialPositionsInABinaryMatrix()
        print(abc.numSpecial([[1,0,0],[0,0,1],[1,0,0]]))
    }
}

