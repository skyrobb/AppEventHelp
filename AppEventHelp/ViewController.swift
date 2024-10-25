//
//  ViewController.swift
//  AppEventHelp
//
//  Created by Skyler Robbins on 10/24/24.
//

import UIKit

class ViewController: UIViewController {

    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    var willConnectCount = 0
    var didBecomeActiveCount = 0
    var willResignActiveCount = 0
    var willEnterForegroundCount = 0
    var didEnterBackgroundCount = 0
    
    @IBOutlet weak var didEnterBackgroundLabel: UILabel!
    @IBOutlet weak var willEnterForegroundLabel: UILabel!
    @IBOutlet weak var willResignActiveLabel: UILabel!
    @IBOutlet weak var didBecomeActiveLabel: UILabel!
    @IBOutlet weak var willConnectToLabel: UILabel!
    @IBOutlet weak var configurationForConnectingLabel: UILabel!
    @IBOutlet weak var didFinishLaunchingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func updateView() {
        didFinishLaunchingLabel.text = "Did Finish Launching Count: \(appDelegate.launchCount)"
        configurationForConnectingLabel.text = "Configuration For Connecting Count: \(appDelegate.configurationForConnectingCount)"
        willConnectToLabel.text = "Will Connect To Count: \(willConnectCount)"
        didBecomeActiveLabel.text = "Did Become Active Count: \(didBecomeActiveCount)"
        willResignActiveLabel.text = "Will Resign Active Count: \(willResignActiveCount)"
        willEnterForegroundLabel.text = "Will Enter Foreground Count: \(willEnterForegroundCount)"
        didEnterBackgroundLabel.text = "Did Enter Background Count: \(didEnterBackgroundCount)"
    }

}

