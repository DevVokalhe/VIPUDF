//
//  DataFlow.swift
//  VIPUDF
//
//  Created by Developer on 08.05.2023.
//

import Foundation

enum DataFlow {
    enum SomeData {
        struct Request {}
        struct Response {
            let result: DataFlow.Result<String>
        }
        struct ViewModel {
            var state: ViewController.State
        }
    }

    enum Result<T> {
        case successful(T)
        case failed(DataFlow.Error)

        var hasError: Bool {
            switch self {
            case .successful:
                return false
            case .failed:
                return true
            }
        }

    }

    enum Error: Swift.Error, LocalizedError {
        case network
        case custom(String)

        var errorDescription: String? {
            switch self {
            case .network: return nil
            case let .custom(message):
                return message
            }
        }
    }
}
