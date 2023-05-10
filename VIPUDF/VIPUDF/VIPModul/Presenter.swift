//
//  Presenter.swift
//  VIPUDF
//
//  Created by Developer on 08.05.2023.
//

import Foundation

protocol PresentationLogic {
    func presentData(_ response: DataFlow.SomeData.Response)
}

final class Presenter: PresentationLogic {
    weak var viewController: ViewController?

    func presentData(_ response: DataFlow.SomeData.Response) {
        var viewModel: DataFlow.SomeData.ViewModel

        defer { viewController?.displayData(viewModel) }

        switch response.result {
        case .successful(let data):
            viewModel = .init(state: .displayUpload(data))
        case .failed(let error):
            viewModel = .init(state: .error(error.localizedDescription))
        }
    }
}
