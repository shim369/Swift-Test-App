//
//  ViewController.swift
//  uranai
//
//  Created by ohtani shimpei on 2023/12/12.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBAction func getOmikuji(_ sender: Any) {
        let results = ["大吉","中吉","吉","大凶"]
        let random = arc4random_uniform(UInt32(results.count))
        
        self.myLabel.text = results[Int(random)]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myLabel.layer.borderColor = UIColor.orange.cgColor
        myLabel.layer.borderWidth = 5
        myLabel.layer.masksToBounds = true
        myLabel.layer.cornerRadius = myLabel.bounds.width / 2
    }


}

