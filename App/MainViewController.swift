//
//  MainViewController.swift
//  Extensions
//
//  Created by Dave Piernick on 1/25/22.
//  Copyright © 2022 Dave Piernick. All rights reserved.
//

import Foundation
import UIKit

class MainViewController: UIViewController {
    
    var scrollView: UIScrollView = { UIScrollView(false) }()
    var label: UILabel = { return UILabel(false, "MainVC!") }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubviewWithConstraints(scrollView)
        addTitleView()
    }

    func addTitleView() {
        scrollView.addSubview(label)
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(greaterThanOrEqualTo: scrollView.leadingAnchor),
            label.topAnchor.constraint(equalTo: scrollView.topAnchor),
            label.trailingAnchor.constraint(lessThanOrEqualTo: scrollView.trailingAnchor),
            label.bottomAnchor.constraint(lessThanOrEqualTo: scrollView.bottomAnchor),
            label.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor)
        ])
    }
}

