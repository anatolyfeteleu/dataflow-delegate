//
//  DetailViewController.swift
//  DataFlow
//
//  Created by Анатолий Фетелеу on 06.04.2023.
//

import UIKit


class DetailViewController: UIViewController {
    
    weak var delegate: ButtonSelectionDelegate?
    
    private let detailView = DetailView()
    
    override func loadView() {
        view = detailView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureButtonActions()
    }
}


extension DetailViewController {
    
    private func extractButtonLabel(_ button: UIButton) -> String? {
        return button.titleLabel?.text
    }
    
    private func configureButtonActions() {
        detailView.firstButtonView.addTarget(self, action: #selector(tappedFirstButton), for: .touchUpInside)
        detailView.secondButtonView.addTarget(self, action: #selector(tappedSecondButton), for: .touchUpInside)
        detailView.thirdButtonView.addTarget(self, action: #selector(tappedThirdButton), for: .touchUpInside)
    }
    
    @objc func tappedFirstButton() {
        let label = extractButtonLabel(detailView.firstButtonView)
        delegate?.didSelectButtonWith(label ?? "")
        navigationController?.popViewController(animated: true)
    }
    
    @objc func tappedSecondButton() {
        let label = extractButtonLabel(detailView.secondButtonView)
        delegate?.didSelectButtonWith(label ?? "")
        navigationController?.popViewController(animated: true)
    }
    
    @objc func tappedThirdButton() {
        let label = extractButtonLabel(detailView.thirdButtonView)
        delegate?.didSelectButtonWith(label ?? "")
        navigationController?.popViewController(animated: true)
    }
    
}


