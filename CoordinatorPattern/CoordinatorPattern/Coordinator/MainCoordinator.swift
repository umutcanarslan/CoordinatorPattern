//
//  MainCoordinator.swift
//  CoordinatorPattern
//
//  Created by Umut Can Arslan on 21.02.2023.
//

import UIKit

class MainCoordinator: Coordinator {

    var navigationController: UINavigationController?
    var children: [Coordinator]? = nil

    func eventOccurred(with type: Event) {
        switch type {
        case .buttonTapped:
            var secondViewController: UIViewController & Coordinating = SecondViewController()

            secondViewController.coordinator = self
            navigationController?.pushViewController(secondViewController, animated: true)
        }
    }

    func start() {
        var mainViewController: UIViewController & Coordinating = MainViewController()

        mainViewController.coordinator = self
        navigationController?.setViewControllers([mainViewController], animated: false)
    }

}
