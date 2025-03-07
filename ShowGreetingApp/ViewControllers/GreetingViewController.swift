//
//  ViewController.swift
//  ShowGreetingApp
//
//  Created by OSIIOSdev on 06.03.2025.
//

import UIKit

final class GreetingViewController: UIViewController {
    // MARK: - @IBOutlets
    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var greetingButton: UIButton!
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setLabelConfiguration()
        setButtonConfiguration()
    }
    
    // MARK: - @IBActions
    @IBAction func greetingButtonPressed(_ sender: UIButton) {
        greetingLabel.isHidden.toggle()
        
        sender.setTitle(greetingLabel.isHidden ? "Show greeting" : "Hide greeting", for: .normal)
    }
    
    // MARK: - Private methods
    private func setButtonConfiguration() {
        greetingButton.layer.cornerRadius = 15
        greetingButton.layer.borderWidth = 2.5
        greetingButton.layer.borderColor = UIColor.systemBackground.cgColor
        greetingButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        greetingButton.setTitle("Press me", for: .normal)
    }

    private func setLabelConfiguration() {
        greetingLabel.text = "Hello there!"
        greetingLabel.font = UIFont.boldSystemFont(ofSize: 30)
        greetingLabel.isHidden = true
    }

}

