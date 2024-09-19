//
//  HomeViewController.swift
//  MasteringUIKit
//
//  Created by marcephrem on 19/09/2024.
//

import UIKit

class HomeViewController: UIViewController {

    // creation d un label for the screen
    private lazy var textLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "Good Morning HomeScreen"
        lbl.font = UIFont.systemFont(ofSize:30)
        return lbl
    }( )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setup()
    }
    

}

private extension HomeViewController {
    
    func setup() {
        
        // ajouter textLbl a la view
        self.view.addSubview(textLbl)
        self.view.backgroundColor = .purple
        
        // active autoLayout
        textLbl.translatesAutoresizingMaskIntoConstraints = false
        
        // sans NSConstraintLayout
        /**
         textLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isAcive = true
         textLbl.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
            text
         */
        
        // configurer autoLayout pour le textlbl
        NSLayoutConstraint.activate([
            textLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textLbl.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}


#Preview {
    HomeViewController()
}
