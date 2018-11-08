//
//  RoundView.swift
//  QueroRoleSP
//
//  Created by Isaías Lima on 02/11/18.
//  Copyright © 2018 Souza Lima. All rights reserved.
//

import UIKit

@IBDesignable
class RoundImageView: UIImageView {

    @IBInspectable var _radius: CGFloat = 0.0 {
        willSet(r) {
            self.layer.masksToBounds = true
            self.layer.cornerRadius = r
        }
    }
}
