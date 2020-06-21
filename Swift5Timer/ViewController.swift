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
    
    var timer = Timer()
    
    var count  = Int()
    
    var imageArray = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        count = 0
     //stopButtonが押せなくなる
        stopButton.isEnabled = false
        
        for i in 0..<5{
                 
                 print(i)
                 
                 let image = UIImage(named: "\(i)")
                 imageArray.append(image!)
                 
                 
             }
        
            imageView.image = UIImage(named: "0")
        
    }
    
    func startTimer(){
        //タイマーを回す0.2秒毎にあるメソッドを呼ぶ
        
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(timerUpdate), userInfo: nil, repeats: true)
    }
    //0.2秒毎に呼ばれる
    @objc func timerUpdate(){
        
        count = count + 1
        
        if count  > 4 {
            
            count =  0
        }
        
        imageView.image = imageArray[count]
        
        
    }
    
    @IBAction func start(_ sender: Any) {
        //imageViewのimageに順番に反映していく
    
        startTimer()
        
        //startButtonは押せなくなる
        startButton.isEnabled = false
        stopButton.isEnabled = true
    }
    
    @IBAction func stop(_ sender: Any) {
        //imageViewのimageに反映されている画像の流れをストップする
        
        
        //startButtonが押せるようになる
        startButton.isEnabled = true
        stopButton.isEnabled = false
        
        //タイマーを止める
        timer.invalidate()
        
       
        
    }
    


}

