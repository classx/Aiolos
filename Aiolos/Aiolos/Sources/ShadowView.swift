//
//  ShadowView.swift
//  Aiolos
//
//  Created by Matthias Tretter on 04/08/2017.
//  Copyright © 2017 Matthias Tretter. All rights reserved.
//

import Foundation


/// Internal class that is used to display a shadow around the Panel
final class ShadowView: UIView {

    // MARK: - Lifecycle

    init(configuration: Panel.Configuration) {
        super.init(frame: .zero)

        self.configure(with: configuration)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - ShadowView

    func configure(with configuration: Panel.Configuration) {
        // configure shadow
        self.layer.shadowOpacity = 0.2
        self.layer.shadowOffset = .zero

        // configure border
        self.layer.cornerRadius = configuration.cornerRadius
        self.layer.maskedCorners = configuration.maskedCorners
        self.layer.borderColor = configuration.borderColor.cgColor
        self.layer.borderWidth = 1.0 / UIScreen.main.scale
    }
}

