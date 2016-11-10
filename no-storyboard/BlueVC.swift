//
//  BlueVC.swift
//  no-storyboard
//
//  Created by Martin Matějka on 25.07.16.
//  Copyright © 2016 Martin Matějka. All rights reserved.
//

import UIKit

class BlueVC: UIViewController {
    
    @IBOutlet weak var printedTxt: UILabel!
    var redVC: RedVC!
    
    var printTxt = ""
    
    convenience init(printMe: String){
        self.init(nibName: "BlueVC",bundle: nil)
        printTxt = printMe
        
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        printedTxt.text = printTxt
        
    }
    @IBAction func loadRed(_ sender: AnyObject) {
        redVC = RedVC(printMe: "Přišel jsi z modré obrazovky")
        self.present(redVC, animated: true, completion: nil)
        
    }
    @IBAction func back(_ sender: AnyObject) {
            let yellowVC: YellowVC = YellowVC(nibName: "YellowVC", bundle: nil)
            present(yellowVC, animated: true, completion: nil)
        
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    }}
