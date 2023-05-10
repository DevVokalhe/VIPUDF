//
//  ViewController+State.swift
//  VIPUDF
//
//  Created by Developer on 08.05.2023.
//

import Foundation

extension ViewController {
    enum State {
        case initial
        case displayUpload(String)
        case error(String)
    }

    func updateState() {
        switch state {
        case .initial:
            titleLabel.text = "Loading..."
            self.interactor.getData(DataFlow.SomeData.Request())
        case .displayUpload(let data):
            titleLabel.text = data
        case .error(let errorDescription):
            titleLabel.text = errorDescription
        }
    }
}
