//
//  ViewController.swift
//  Swift5Timer
//
//  Created by 野口晃 on 2020/06/20.
//  Copyright © 2020 Akira Noguchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var stopButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
     //stopButtonが押せなくなる
        stopButton.isEnabled = true
        
        
    }
    
    @IBAction func start(_ sender: Any) {
        //imageViewのimageに順番に反映していく
        
        
        
        //startButtonは押せなくなる
        startButton.isEnabled = true
        
    }
    
    @IBAction func stop(_ sender: Any) {
        //imageViewのimageに反映されている画像の流れをストップする
        
        
        //startButtonが押せるようになる
        startButton.isEnabled = false
        
    }
    


}

