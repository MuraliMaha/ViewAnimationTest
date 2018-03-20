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
    @IBOutlet weak var totalView: UIView!
    @IBOutlet weak var totalBtn: UIButton!
    
    @IBOutlet weak var jobsContainerView: UIView!
    @IBOutlet weak var activeView: UIView!
    @IBOutlet weak var inActiveView: UIView!
    @IBOutlet weak var freeView: UIView!
    @IBOutlet weak var onJobView: UIView!
    
    @IBOutlet weak var activeBtn: UIButton!
    @IBOutlet weak var inActiveBtn: UIButton!
    @IBOutlet weak var freeBtn: UIButton!
    @IBOutlet weak var onJobBtn: UIButton!
    
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    
    var halfViewHeight : CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        jobsContainerView.isHidden = true
        
        myContainerView.layer.cornerRadius = 10
//        myContainerView.layer.backgroundColor = UIColor.blue 
        
        _ = myContainerView.frame.size.width
        
        _ = myContainerView.frame.size.height
        
        print("This are works from Team B")
        
        print("Main File or First File")
        print("For Test")
        print("Test for Push")
        print("Test for Push without Commit")
        
        
        self.totalView.layer.cornerRadius = self.totalView.frame.size.width / 2
        self.totalView.clipsToBounds = true
        
        print("Top Const value = ",topConstraint.constant)
        print("Bottom Const value = ",bottomConstraint.constant)
        
         halfViewHeight = self.view.frame.size.height / 2
        
        
        self.activeBtn.layer.cornerRadius = self.activeBtn.frame.size.width / 2
        self.activeBtn.clipsToBounds = true
        self.inActiveBtn.layer.cornerRadius = self.inActiveBtn.frame.size.width / 2
        self.inActiveBtn.clipsToBounds = true
        self.freeBtn.layer.cornerRadius = self.freeBtn.frame.size.width / 2
        self.freeBtn.clipsToBounds = true
        self.onJobBtn.layer.cornerRadius = self.onJobBtn.frame.size.width / 2
        self.onJobBtn.clipsToBounds = true
    }

    @IBAction func totalBtnTapped(_ sender: UIButton) {
        
//        UIView.animate(withDuration: 1, animations: {self.totalView.alpha = 0}){
//            _ in self.totalView.removeFromSuperview()
//        }
        
//        UIView.animate(withDuration: 1, delay: 1, options: .transitionCurlUp, animations: {
//            self.totalView.alpha = 0
//        }) { _ in
////            self.totalView.removeFromSuperview()
//        }

        UIView.animate(withDuration: 1, delay: 1, options: .curveEaseIn, animations: {
            self.topConstraint.constant = -self.halfViewHeight
            self.bottomConstraint.constant = self.halfViewHeight
            self.view.layoutIfNeeded()
        }, completion: nil)
        
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func openBtnTapped(_ sender: UIButton) {
        self.topConstraint.constant = 10
        self.bottomConstraint.constant = 10
    }
    
}

