//
//  ViewController.swift
//  PitchPerfect
//
//  Created by PeculiarYak on 11/04/2016.
//  Copyright © 2016 CWA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var stopRecordingButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: AnyObject) {
        recordingLabel.text = "Recording in Progress"
        stopRecordingButton.enabled = true;
        recordButton.enabled = false;
    }

    @IBAction func stopRecording(sender: AnyObject) {
        recordingLabel.text = "Tap to Record"
        stopRecordingButton.enabled = false;
        recordButton.enabled = true;
    }
    override func viewWillAppear(animated: Bool) {
        stopRecordingButton.enabled = false;
    }
}

