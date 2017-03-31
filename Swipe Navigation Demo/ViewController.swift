//
//  ViewController.swift
//  Swipe Navigation Demo
//
//  Created by PhongLe on 3/31/17.
//  Copyright © 2017 PhongLe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let viewController1 = ViewController1(nibName: "ViewController1", bundle: nil)
        
        var frame1 = viewController1.view.frame
        frame1.size.width = self.view.frame.size.width
        frame1.size.height = self.view.frame.size.height
        print("width: \(frame1.size.width) height: \(frame1.size.height)")
        viewController1.view.frame = frame1
        
        self.addChildViewController(viewController1)
        self.scrollView.addSubview(viewController1.view)
        viewController1.didMove(toParentViewController: self)
        
        
        
        let viewController2 = ViewController2(nibName: "ViewController2", bundle: nil)
        
        var frame2 = viewController2.view.frame
        frame2.origin.x = self.view.frame.size.width
        viewController2.view.frame = frame2
        
        self.addChildViewController(viewController2)
        self.scrollView.addSubview(viewController2.view)
        viewController2.didMove(toParentViewController: self)
        
        
        self.scrollView.contentSize = CGSize(width: self.view.frame.size.width*2, height: self.view.frame.size.height)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func segtChange(_ sender: UISegmentedControl) {
        print(sender.selectedSegmentIndex)
        if sender.selectedSegmentIndex == 1 {
        }
    }
    

}

