//
//  ViewController.swift
//  TextToSpeech
//
//  Created by Apple on 30/03/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
 
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var textfield: UITextField!
    var name: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func bttnSpeak(_ sender: Any) {
    }
    
    
  
    
    func speakText(text: String){
        let utterance=AVSpeechUtterance(string : text)
        utterance.rate=0.4
        utterance.volume = 100
        utterance.voice=AVSpeechSynthesisVoice(language: "en-GB")
        let synt=AVSpeechSynthesizer()
        synt.speak(utterance)
    
    }
    
}


