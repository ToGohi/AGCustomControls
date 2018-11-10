//
//  AGCustomButton.swift
//  demoControl
//
//  Created by Antonio Gonzalez Hidalgo on 09/11/2018.
//  Copyright © 2018 Antonio Gonzalez Hidalgo. All rights reserved.
//

import UIKit

@IBDesignable
public class AGCustomButton: UIButton {

    @IBInspectable var backColor: UIColor = UIColor.clear {
        didSet {
            self.backgroundColor = backColor
        }
    }

    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }

    //MARK: - Shadow

    @IBInspectable var shadowOpacity: Float = 0.0 {
        didSet {
            self.layer.shadowOpacity = shadowOpacity
        }
    }

    @IBInspectable var shadowRadius: CGFloat = 0.0 {
        didSet {
            self.layer.shadowRadius = shadowRadius
        }
    }

    @IBInspectable var shadowOffset: CGSize = CGSize(width: 0.0, height: 0.0) {
        didSet {
            self.layer.shadowOffset = shadowOffset
        }
    }

    @IBInspectable var shadowColor: UIColor = UIColor.black {
        didSet {
            self.layer.shadowColor = shadowColor.cgColor
        }
    }

    //MARK: - Init

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupAGCustomControl()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupAGCustomControl()
    }

    override public func prepareForInterfaceBuilder() {
        super .prepareForInterfaceBuilder()
        setupAGCustomControl()
    }

    private func setupAGCustomControl(){
        self.backgroundColor = backColor
        self.layer.cornerRadius = cornerRadius
        self.layer.shadowColor = shadowColor.cgColor
        self.layer.shadowOffset = shadowOffset
        self.layer.shadowOpacity = shadowOpacity
        self.layer.shadowRadius = shadowRadius
    }

}
