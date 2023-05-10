//
//  ViewController.swift
//  VIPUDF
//
//  Created by Developer on 08.05.2023.
//

import UIKit

class ViewController: UIViewController {

    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        label.center = view.center
        view.addSubview(label)

        return label
    }()

    let interactor: BusinessLogic

    var state: State {
        didSet {
            updateState()
        }
    }

    override func loadView() {
        super.loadView()

        view.backgroundColor = .white
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        state = { state } ()
    }

    init(interactor: BusinessLogic, state: State) {
        self.interactor = interactor
        self.state = state

        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
