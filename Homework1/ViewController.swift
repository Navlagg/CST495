//
//  ViewController.swift
//  Homework1
//
//  Created by Cristian Galvan on 9/13/17.
//  Copyright © 2017 Cristian Galvan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tunerButton: UIButton!
    @IBOutlet var tunerImage: UIImageView!
    @IBOutlet var muscleButton: UIButton!
    @IBOutlet var muscleImage: UIImageView!
    @IBOutlet var exoticButton: UIButton!
    @IBOutlet var exoticImage: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        elementToggle(toggle: false);
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func elementToggle(toggle: Bool) {
        tunerButton.isHidden = toggle;
        tunerImage.isHidden = toggle;
        muscleButton.isHidden = toggle;
        muscleImage.isHidden = toggle;
        exoticButton.isHidden = toggle;
        exoticImage.isHidden = toggle;
        titleLabel.isHidden = toggle;
    }
    
    @IBAction func tunerToggle(_ sender: Any) {
        elementToggle(toggle: true);

    }
    @IBAction func muscleToggle(_ sender: Any) {
        elementToggle(toggle: true);

    }
    @IBAction func exoticToggle(_ sender: Any) {
        elementToggle(toggle: true);
    }
}

