//
//  CodedViewController.swift
//  Intern1Demo
//
//  Created by Aleksandr Lashevich on 06/08/2019.
//  Copyright © 2019 Aleksandr Lashevich. All rights reserved.
//

import UIKit

class CodedViewController: UIViewController {

    var loadingLabel: UILabel! = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        let loadingLabel = UILabel(frame: CGRect(x: 50, y: 50, width: 400, height: 50))
        loadingLabel.text = "Loading..."
        view.addSubview(loadingLabel)
        self.loadingLabel = loadingLabel

        let button = UIButton(frame: CGRect(x: 50, y: 200, width: 100, height: 50))
        button.addTarget(self, action: #selector(onManVCButtonTap(_:)), for: .touchUpInside)
        button.setTitle("Dismiss", for: .normal)
        view.addSubview(button)

        let changeColorButton = UIButton(frame: CGRect(x: 100, y: 250, width: 100, height: 50))
        changeColorButton.addTarget(self, action: #selector(onManVCChangeColorButtonTap(_:)), for: .touchUpInside)
        changeColorButton.backgroundColor = .red
        view.addSubview(changeColorButton)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        loadingLabel.text = Date().description
    }


    @objc func onManVCButtonTap(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    @objc func onManVCChangeColorButtonTap(_ sender: Any) {
        view.backgroundColor = .blue
    }

}
