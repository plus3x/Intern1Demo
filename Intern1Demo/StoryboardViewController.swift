//
//  StoryboardViewController.swift
//  Intern1Demo
//
//  Created by Aleksandr Lashevich on 06/08/2019.
//  Copyright © 2019 Aleksandr Lashevich. All rights reserved.
//

import UIKit

protocol StoryboardViewControllerDelegate: class {
    func storyboardViewControllerDidAppear(vc: StoryboardViewController?)
}

class StoryboardViewController: UIViewController {

    weak var delegate: StoryboardViewControllerDelegate? = nil

    @IBOutlet var loadingLabel: UILabel!

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        loadingLabel.text = Date().description
        delegate?.storyboardViewControllerDidAppear(vc: self)
    }

    @IBAction func onManVCButtonTap(_ sender: Any) {
        navigationController?.popViewController(animated: true)
//        navigationController?.popToRootViewController(animated: true)
    }

    @IBAction func onManVCChangeColorButtonTap(_ sender: Any) {
        view.backgroundColor = .blue
    }
}
