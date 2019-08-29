//
//  CircleProgress.swift
//  Recipient
//
//  Created by Zoe Liu on 2019/8/16.
//  Copyright © 2019 Everbridge, Inc. All rights reserved.
//

import UIKit

@IBDesignable class CircleProgress: UIControl {
    @IBInspectable var mainColor: UIColor = UIColor.gray {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    @IBInspectable var forgroundColor: UIColor = UIColor.blue {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    @IBInspectable var progress: CGFloat = 0.3 {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    lazy var backLayer: CAShapeLayer? = {
        let layer = CAShapeLayer()
        layer.strokeColor = mainColor.cgColor
        layer.fillColor = UIColor.clear.cgColor
        layer.lineWidth = 2.0
        return layer
    }()
    
    lazy var foreLayer: CAShapeLayer? = {
        let layer = CAShapeLayer()
        layer.strokeColor = forgroundColor.cgColor
        layer.fillColor = UIColor.clear.cgColor
        layer.lineWidth = 2.0
        layer.lineCap = .round
        return layer
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .clear
        self.layer.addSublayer(self.backLayer!)
        self.layer.addSublayer(self.foreLayer!)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.backgroundColor = .clear
        self.layer.addSublayer(self.backLayer!)
        self.layer.addSublayer(self.foreLayer!)
        self.mainColor = UIColor.gray
        self.forgroundColor = UIColor.blue
        self.progress = 0.3
    }
    
    override func awakeFromNib() {
        self.mainColor = UIColor.gray
        self.forgroundColor = UIColor.blue
        self.progress = 0.3
    }
    
    override func draw(_ rect: CGRect) {
        self.backLayer?.frame = self.bounds.inset(by: UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1))
        self.foreLayer?.frame = self.bounds.inset(by: UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1))
        self.backLayer?.strokeColor = mainColor.cgColor
        self.foreLayer?.strokeColor = forgroundColor.cgColor
        
        let circle = UIBezierPath.init(ovalIn: self.backLayer!.bounds)
        self.backLayer?.path = circle.cgPath
        
        let center = CGPoint.init(x: self.foreLayer!.frame.size.width / 2,
                                  y: self.foreLayer!.frame.size.height / 2)
        let start = 0 - CGFloat(Double.pi / 2)
        let end = CGFloat(Double.pi) * 2 * progress - CGFloat(Double.pi / 2)
        let arc = UIBezierPath.init(arcCenter: center,
                                    radius: self.foreLayer!.frame.size.width / 2,
                                    startAngle: start, endAngle: end, clockwise: true)
        self.foreLayer!.path = arc.cgPath
    }
}

extension CircleProgress {
    public override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
    }
}
