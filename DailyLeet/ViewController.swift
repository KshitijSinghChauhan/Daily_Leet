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

        let abc = FindWordsFormedByCharacters()
        print(abc.countCharacters(["cat","bt","hat","tree"], "atach"))
    }
}

