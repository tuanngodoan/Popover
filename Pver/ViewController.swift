//
//  ViewController.swift
//  Pver
//
//  Created by Doãn Tuấn on 11/17/16.
//  Copyright © 2016 doantuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        //segue for the popover configuration window
        if segue.identifier == "showOver" {
            let controller = segue.destination
            controller.popoverPresentationController!.delegate = self
            controller.popoverPresentationController?.backgroundColor = UIColor.white
            controller.preferredContentSize = CGSize(width: 220, height: 30)
            
        }
    }
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle
    {
        return .none
    }
    
}

