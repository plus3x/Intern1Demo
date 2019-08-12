//
//  NibViewController.swift
//  Intern1Demo
//
//  Created by Aleksandr Lashevich on 06/08/2019.
//  Copyright © 2019 Aleksandr Lashevich. All rights reserved.
//

import UIKit

class NibViewController: UIViewController {

    static let nibName = "NibViewController"

    @IBOutlet var loadingLabel: UILabel!

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        loadingLabel.text = Date().description
    }

    @IBAction func dismissButtonTap(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func changeColorButtonTap(_ sender: Any) {
        view.backgroundColor = .blue
    }

}
