//
//  ViewController.swift
//  SwiftCircleProgressBarDemo
//
//  Created by Zoe Liu on 2019/8/29.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var progressBar: CircleProgress!
    var currentProgress: Float = 0.01
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        progressBar.progress = CGFloat(currentProgress)
    }

    @IBAction func increaseProgress(_ sender: Any) {
        currentProgress = Float.minimum(1.0, currentProgress + 0.02)
        progressBar.progress = CGFloat(currentProgress)
    }
    
    @IBAction func decreaseProgress(_ sender: Any) {
        currentProgress = Float.maximum(0, currentProgress - 0.02)
        progressBar.progress = CGFloat(currentProgress)
    }
}

