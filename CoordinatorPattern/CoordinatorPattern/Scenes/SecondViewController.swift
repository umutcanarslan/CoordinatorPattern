//
//  SecondViewController.swift
//  CoordinatorPattern
//
//  Created by Umut Can Arslan on 21.02.2023.
//

import UIKit

class SecondViewController: UIViewController, Coordinating {

    var coordinator: Coordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Second View"
    }

}
