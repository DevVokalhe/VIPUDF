//
//  Interactor.swift
//  VIPUDF
//
//  Created by Developer on 08.05.2023.
//

import Foundation

protocol BusinessLogic {
    func getData(_ request: DataFlow.SomeData.Request)
}

final class Interactor: BusinessLogic {
    private let presenter: PresentationLogic

    init(presenter: PresentationLogic) {
        self.presenter = presenter
    }

    func getData(_ request: DataFlow.SomeData.Request) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) { [weak self] in
            let response = DataFlow.SomeData.Response(result: .successful("Hello VIP"))

            self?.presenter.presentData(.init(result: response.result))
        }
    }
}
