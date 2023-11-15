//
//  UIView+Extensios.swift
//  Weather App
//
//  Created by Jenifer Camila Formagi on 13/11/23.
//

import Foundation
import UIKit

extension UIView {
    func setConstraintsToParent(_ parent: UIView){
        NSLayoutConstraint.activate([
            self.topAnchor.constraint(equalTo: parent.topAnchor),
            self.bottomAnchor.constraint(equalTo: parent.bottomAnchor),
            self.leadingAnchor.constraint(equalTo: parent.leadingAnchor),
            self.trailingAnchor.constraint(equalTo: parent.trailingAnchor)
        ])
    }
}
