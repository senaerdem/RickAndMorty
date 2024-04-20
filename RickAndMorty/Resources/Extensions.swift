//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Sena Nur Erdem on 20.04.2024.
//

import UIKit

extension UIView {
    func addSubview(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
