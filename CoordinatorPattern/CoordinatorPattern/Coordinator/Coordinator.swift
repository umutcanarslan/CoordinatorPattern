//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by Umut Can Arslan on 21.02.2023.
//

import UIKit

enum Event {
    case buttonTapped
}

protocol Coordinator {
    var navigationController: UINavigationController? { get set }
    var children: [Coordinator]? { get set }

    func eventOccurred(with type: Event)
    func start()
}

protocol Coordinating {
    var coordinator: Coordinator? { get set }
}
