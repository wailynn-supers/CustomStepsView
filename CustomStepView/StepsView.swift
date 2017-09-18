//
//  StepsView.swift
//  CustomStepView
//
//  Created by Wai Lynn Zaw on 9/18/17.
//  Copyright © 2017 wailynnzaw. All rights reserved.
//

import Foundation
import UIKit

class StepsView: UIView {
    var size: Int = 2
    var items: [String] = [String]()
    var color: UIColor!
    var font: UIFont!
    
    func reloadData() {
        self.setNeedsDisplay()
    }
    
    func initView(_ color: UIColor,_ font: UIFont, _ items: [String]) {
        self.color = color
        self.items = items
        self.font = font
    }
    
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        context!.setLineWidth(2.0)
        context!.setStrokeColor(color.cgColor)
        context?.move(to: CGPoint(x: 0, y: self.bounds.midY))
        context?.addLine(to: CGPoint(x: self.bounds.width, y: self.bounds.midY))
        context!.strokePath()
        context!.setFillColor(color.cgColor)
        let circleRadius = CGFloat(5.0)
        
        
        let start = CGPoint(x: self.bounds.minX + circleRadius, y: self.bounds.midY)
        addPoint(start, context: context!)
        addLabel(start, label: items.first! )
        
        let end = CGPoint(x: self.bounds.maxX - circleRadius, y: self.bounds.midY)
        addPoint(end, context: context!)
        addLabel(end, label: items.last!)
        
        switch size {
        case 2:
            let point = CGPoint(x: self.bounds.midX + circleRadius, y: self.bounds.midY)
            addPoint(point, context: context!)
            addViaLabel(point)
            addLabel(point, label: items[0])
            break
            
        case 3:
            let point = CGPoint(x: self.bounds.midX/2 + circleRadius, y: self.bounds.midY)
            addPoint(point, context: context!)
            addViaLabel(point)
            addLabel(point, label: items[0])
            
            let point2 = CGPoint(x: self.bounds.midX*2 + circleRadius, y: self.bounds.midY)
            addPoint(point2, context: context!)
            addViaLabel(point)
            addLabel(point2, label: items[1])
            break
            
        case 4:
            let point = CGPoint(x: self.bounds.midX/2 + circleRadius, y: self.bounds.midY)
            addPoint(point, context: context!)
            addViaLabel(point)
            addLabel(point, label: items[0])
            
            let point2 = CGPoint(x: self.bounds.midX + circleRadius, y: self.bounds.midY)
            addPoint(point2, context: context!)
            addViaLabel(point)
            addLabel(point2, label: items[1])
            
            let point3 = CGPoint(x: self.bounds.midX*2 + circleRadius, y: self.bounds.midY)
            addPoint(point3, context: context!)
            addViaLabel(point)
            addLabel(point3, label: items[2])
            break
            
        case 5:
            let point = CGPoint(x: self.bounds.midX/4 + circleRadius, y: self.bounds.midY)
            addPoint(point, context: context!)
            addViaLabel(point)
            addLabel(point, label: items[0])
            
            let point2 = CGPoint(x: self.bounds.midX/2 + circleRadius, y: self.bounds.midY)
            addPoint(point2, context: context!)
            addViaLabel(point)
            addLabel(point2, label: items[1])
            
            let point3 = CGPoint(x: self.bounds.midX*2 + circleRadius, y: self.bounds.midY)
            addPoint(point3, context: context!)
            addViaLabel(point)
            addLabel(point3, label: items[2])
            
            let point4 = CGPoint(x: self.bounds.midX*4 + circleRadius, y: self.bounds.midY)
            addPoint(point4, context: context!)
            addViaLabel(point)
            addLabel(point4, label: items[3])
            break
            
        default:
            let point = CGPoint(x: self.bounds.midX + circleRadius, y: self.bounds.midY)
            addBlankLabel(point)
            addBlankLabelUp(point)
            break
        }
        
        context?.fillPath()
    }
    func addPoint(_ point: CGPoint, context: CGContext){
        let circleRadius = CGFloat(5.0)
        let circleRect = CGRect(x: point.x - circleRadius,
                                y: point.y - circleRadius,
                                width: circleRadius * 2,
                                height: circleRadius * 2)
        context.addEllipse(in: circleRect)
    }
    
    func addViaLabel(_ rect: CGPoint){
        let lbl:UILabel = UILabel()
        lbl.frame = CGRect(x: rect.x - 25, y: rect.y - 26, width: 50, height: 20)
        lbl.textAlignment = .center
        lbl.text = "Via"
        lbl.numberOfLines=1
        lbl.textColor=UIColor.darkGray
        lbl.font = font
        lbl.backgroundColor=UIColor.clear
        addSubview(lbl)
        
    }
    
    func addBlankLabel(_ rect: CGPoint){
        let lbl:UILabel = UILabel()
        lbl.frame = CGRect(x: rect.x - 25, y: rect.y + 6, width: 50, height: 20)
        lbl.textAlignment = .center
        lbl.text = ""
        lbl.numberOfLines=1
        lbl.textColor=UIColor.darkGray
        lbl.font = font
        lbl.backgroundColor=UIColor.white
        addSubview(lbl)
        
    }
    func addBlankLabelUp(_ rect: CGPoint){
        let lbl:UILabel = UILabel()
        lbl.frame = CGRect(x: rect.x - 25, y: rect.y - 26, width: 50, height: 20)
        lbl.textAlignment = .center
        lbl.text = ""
        lbl.numberOfLines=1
        lbl.textColor=UIColor.darkGray
        lbl.font = font
        lbl.backgroundColor=UIColor.white
        addSubview(lbl)
        
    }
    
    func addLabel(_ rect: CGPoint, label: String){
        let lbl:UILabel = UILabel()
        lbl.frame = CGRect(x: rect.x - 25, y: rect.y + 6, width: 50, height: 20)
        lbl.textAlignment = .center
        lbl.text = label
        lbl.numberOfLines=1
        lbl.textColor=UIColor.darkGray
        lbl.font = font
        lbl.backgroundColor=UIColor.white
        addSubview(lbl)
    }
}

