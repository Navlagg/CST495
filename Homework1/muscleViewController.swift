//
//  muscleViewController.swift
//  Homework1
//
//  Created by Cristian Galvan on 9/17/17.
//  Copyright © 2017 Cristian Galvan. All rights reserved.
//

import UIKit
import AVFoundation
import AudioToolbox

class muscleViewController: UIViewController {
    var count = 0
    var player : AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playHellcat(_ sender: Any) {
        if(count == 3){
            let alert = UIAlertController(title: "Vroom", message: "super fast!", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Whoa", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            count = 0
        }
        guard let url = Bundle.main.url(forResource: "hellcat", withExtension: "mp3") else {
            print("url not found")
            return
        }
        
        do {
            /// this codes for making this app ready to takeover the device audio
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            /// change fileTypeHint according to the type of your audio file (you can omit this)
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3)
            
            // no need for prepareToPlay because prepareToPlay is happen automatically when calling play()
            player!.play()
            count += 1
        } catch let error as NSError {
            print("error: \(error.localizedDescription)")
        }

    }
    @IBAction func playCamaro(_ sender: Any) {
        if(count == 3){
            let alert = UIAlertController(title: "Vroom", message: "super fast!", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Whoa", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            count = 0
        }
        guard let url = Bundle.main.url(forResource: "camaro", withExtension: "mp3") else {
            print("url not found")
            return
        }
        
        do {
            /// this codes for making this app ready to takeover the device audio
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            /// change fileTypeHint according to the type of your audio file (you can omit this)
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3)
            
            // no need for prepareToPlay because prepareToPlay is happen automatically when calling play()
            player!.play()
            count += 1
        } catch let error as NSError {
            print("error: \(error.localizedDescription)")
        }

    }
    @IBAction func playMustang(_ sender: Any) {
        if(count == 3){
            let alert = UIAlertController(title: "Vroom", message: "super fast!", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Whoa", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            count = 0
        }
        /// **must** define instance variable outside, because .play() will deallocate AVAudioPlayer
        /// immediately and you won't hear a thing
        guard let url = Bundle.main.url(forResource: "stang", withExtension: "mp3") else {
            print("url not found")
            return
        }
        
        do {
            /// this codes for making this app ready to takeover the device audio
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            /// change fileTypeHint according to the type of your audio file (you can omit this)
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3)
            
            // no need for prepareToPlay because prepareToPlay is happen automatically when calling play()
            player!.play()
            count += 1
        } catch let error as NSError {
            print("error: \(error.localizedDescription)")
        }

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
