//
//  ViewControllerBuilder.swift
//  VIPUDF
//
//  Created by Developer on 08.05.2023.
//

import UIKit

final class ViewControllerBuilder {

    private let state: ViewController.State

    init(state: ViewController.State) {
        self.state = state
    }

    func build() -> UIViewController {
        let presenter = Presenter()
        let interactor = Interactor(presenter: presenter)
        let viewController = ViewController(interactor: interactor, state: state)
        presenter.viewController = viewController

        return viewController
    }
}
