//  ViewController.swift
//  MasteringUIKit
//
//  Created by marcephrem on 19/09/2024.
//

import UIKit

class ViewController: UIViewController {
    
    // drag and drop du ui
    @IBOutlet weak var greetingLbl: UILabel!
    @IBOutlet weak var primaryButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemPurple
        
        // Do any additional setup after loading the view
        // aligner le texte
        
    }
    
    @IBAction func primaryButtonTapped(_ sender: Any) {
        greetingUser("Marc , i'm here to talk about with you")
        self.view.backgroundColor = .systemPink
    }
}

private extension ViewController {
    func greetingUser(_ name: String){
        greetingLbl.text = "Bonjour   \(name)"
        
    }
}
