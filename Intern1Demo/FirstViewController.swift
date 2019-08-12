//
//  FirstViewController.swift
//  Intern1Demo
//
//  Created by Aleksandr Lashevich on 06/08/2019.
//  Copyright © 2019 Aleksandr Lashevich. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var myButton: UIButton!
    @IBOutlet var label: UILabel!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false
        super.viewWillDisappear(animated)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowStoryboardVC", let vc = segue.destination as? StoryboardViewController {
            vc.delegate = self
        }
    }

    @IBAction func onButton(_ sender: Any) {
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            self.performSegue(withIdentifier: "ShowStoryboardVC", sender: self)
        }

//        let vc = CodedViewController()
//        present(vc, animated: true, completion: nil)

    }
}

extension FirstViewController: StoryboardViewControllerDelegate {
    func storyboardViewControllerDidAppear(vc: StoryboardViewController?) {
        activityIndicator.stopAnimating()
    }
}
