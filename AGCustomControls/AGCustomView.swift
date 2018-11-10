//
//  AGCustomView.swift
//  demoControl
//
//  Created by Antonio Gonzalez Hidalgo on 10/11/2018.
//  Copyright © 2018 Antonio Gonzalez Hidalgo. All rights reserved.
//

import UIKit

@IBDesignable
public class AGCustomView: UIView {

    @IBInspectable var backColor: UIColor = UIColor.clear {
        didSet {
            self.backgroundColor = backColor
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
            gradient.cornerRadius = cornerRadius
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

    //MARK: - Gradient
    private var gradient:CAGradientLayer = CAGradientLayer()
    
    @IBInspectable var enableGradient: Bool = false {
        didSet {
            if (enableGradient){
                gradient.colors = [primaryColor.cgColor, secundaryColor.cgColor]
                gradient.frame = self.bounds
                gradient.startPoint = startPoint
                gradient.endPoint = endPoint
                gradient.cornerRadius = cornerRadius
                self.layer.insertSublayer(gradient, at: 0)
            }else{
                gradient.removeFromSuperlayer()
            }
        }
    }
    
    @IBInspectable var primaryColor: UIColor = UIColor.white {
        didSet {
            gradient.colors = [primaryColor.cgColor, secundaryColor.cgColor]
        }
    }
    
    @IBInspectable var secundaryColor: UIColor = UIColor.black {
        didSet {
            gradient.colors = [primaryColor.cgColor, secundaryColor.cgColor]
        }
    }
    
    @IBInspectable var startPoint: CGPoint = CGPoint(x: 0.0, y: 0.0) {
        didSet {
            gradient.startPoint = startPoint
        }
    }
    
    @IBInspectable var endPoint: CGPoint = CGPoint(x: 1.0, y: 1.0) {
        didSet {
            gradient.endPoint = endPoint
        }
    }
    
    
    //MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupAGCustomView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupAGCustomView()
    }
    
    override public func prepareForInterfaceBuilder() {
        super .prepareForInterfaceBuilder()
        setupAGCustomView()
    }
    
    private func setupAGCustomView(){
        self.backgroundColor = backColor
        self.layer.cornerRadius = cornerRadius
        self.gradient.cornerRadius = cornerRadius
        self.layer.shadowColor = shadowColor.cgColor
        self.layer.shadowOffset = shadowOffset
        self.layer.shadowOpacity = shadowOpacity
        self.layer.shadowRadius = shadowRadius
    }
    
}
