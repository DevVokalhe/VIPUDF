//
//  ViewController+DisplayLogic.swift
//  VIPUDF
//
//  Created by Developer on 08.05.2023.
//

import Foundation

protocol DisplayLogic {
    func displayData(_ viewModel: DataFlow.SomeData.ViewModel)
}

extension ViewController: DisplayLogic {
    func displayData(_ viewModel: DataFlow.SomeData.ViewModel) {
        self.state = viewModel.state
    }
}
