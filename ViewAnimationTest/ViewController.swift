//
//  ViewController.swift
//  ViewAnimationTest
//
//  Created by SunTelematics on 16/03/18.
//  Copyright © 2018 SunTelematics. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myContainerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myContainerView.layer.cornerRadius = 10
//        myContainerView.layer.backgroundColor = UIColor.blue 
        
        _ = myContainerView.frame.size.width
        
        _ = myContainerView.frame.size.height
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

