//
//  ViewController.swift
//  no-storyboard
//
//  Created by Martin Matějka on 25.07.16.
//  Copyright © 2016 Martin Matějka. All rights reserved.
//

import UIKit

class YellowVC: UIViewController {
    
    var blueVC: BlueVC!
    
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func loadBlue(_ sender: AnyObject) {
        blueVC = BlueVC(printMe: "Přišel jsi ze žlutý obrazovky")
       // blueVC = BlueVC(nibName: "BlueVC", bundle: nil)
        self.present(blueVC, animated: true, completion: nil)
    }
}

