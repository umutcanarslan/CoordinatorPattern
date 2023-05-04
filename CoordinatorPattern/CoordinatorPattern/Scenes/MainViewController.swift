//
//  MainViewController.swift
//  CoordinatorPattern
//
//  Created by Umut Can Arslan on 21.02.2023.
//

import UIKit

class MainViewController: UIViewController, Coordinating {

    var coordinator: Coordinator?

    var button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Home View"

        setupUI()
    }

    private func setupUI() {
        button = UIButton(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width - 32, height: 54))
        view.addSubview(button)
        button.center = view.center
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Go to Second View", for: .normal)
        button.layer.cornerRadius = 12
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }

    @objc func didTapButton() {
        coordinator?.eventOccurred(with: .buttonTapped)
    }

}
