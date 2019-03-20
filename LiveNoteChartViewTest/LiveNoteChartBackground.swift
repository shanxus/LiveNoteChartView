//
//  LiveNoteChart.swift
//  LiveNoteChartViewTest
//
//  Created by ShanOvO on 2019/3/20.
//  Copyright © 2019 ShanOvO. All rights reserved.
//

import UIKit

@IBDesignable
class LiveNoteChartBackground: UIView {

    private let numberOfBlock = 3
    @IBInspectable
    private var pathWidth: CGFloat = 0.1
    private let lineColor: UIColor = .black
    
    override func draw(_ rect: CGRect) {
    
        let horizontalBlockDistance = rect.height / CGFloat(numberOfBlock)
        
        // horizontal lines.
        for block in 0...numberOfBlock {
            let path = UIBezierPath()
            path.lineWidth = pathWidth
            
            let startPoint = CGPoint(x: rect.minX, y: rect.maxY - CGFloat(block) * horizontalBlockDistance)
            path.move(to: startPoint)
            
            let endPoint = CGPoint(x: rect.maxX, y: rect.maxY - CGFloat(block) * horizontalBlockDistance)
            path.addLine(to: endPoint)
            
            lineColor.setStroke()
            path.stroke()
        }
        
        let verticleBlockDistance = rect.width / CGFloat(numberOfBlock)
        
        // verticle lines.
        for block in 0...numberOfBlock {
            let path = UIBezierPath()
            path.lineWidth = pathWidth
            
            let startPoint = CGPoint(x: rect.minX + CGFloat(block) * verticleBlockDistance, y: rect.minY)
            path.move(to: startPoint)
            
            let endPoint = CGPoint(x: rect.minX + CGFloat(block) * verticleBlockDistance, y: rect.maxY)
            path.addLine(to: endPoint)
            
            lineColor.setStroke()
            path.stroke()
        }
        
        
    }
}
