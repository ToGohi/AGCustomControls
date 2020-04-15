//
//  AGCustomImageView.swift
//  AGCustomControls
//
//  Created by Antonio Gonzalez Hidalgo on 15/04/2020.
//  Copyright © 2020 Antonio Gonzalez Hidalgo. All rights reserved.
//

import UIKit

@IBDesignable
public class AGCustomImageView: UIImageView {

  @IBInspectable var cornerRadius: CGFloat = 0.0 {
		didSet {
      self.layer.cornerRadius = cornerRadius
    }
  }
  
  //MARK: - Border
  
  @IBInspectable var borderWidth: CGFloat = 0.0 {
    didSet {
      self.layer.borderWidth = borderWidth
    }
  }
  
  @IBInspectable var borderColor: UIColor = UIColor.clear {
    didSet {
      self.layer.borderColor = borderColor.cgColor
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
    setupAGCustomView()
  }
    
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setupAGCustomView()
  }
  
  override public func prepareForInterfaceBuilder() {
    super.prepareForInterfaceBuilder()
    setupAGCustomView()
  }
  
  public override func layoutSubviews() {
    super.layoutSubviews()
    setupAGCustomView()
  }
        
  private func setupAGCustomView(){
    self.layer.cornerRadius = cornerRadius
    self.layer.shadowColor = shadowColor.cgColor
    self.layer.shadowOffset = shadowOffset
    self.layer.shadowOpacity = shadowOpacity
    self.layer.shadowRadius = shadowRadius
  }
    
}
