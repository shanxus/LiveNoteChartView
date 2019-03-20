//
//  LiveNoteChart.swift
//  LiveNoteChartViewTest
//
//  Created by ShanOvO on 2019/3/20.
//  Copyright © 2019 ShanOvO. All rights reserved.
//

import UIKit

@IBDesignable
class LiveNoteChart: UIView {

    private var dataset = [Double]()
    private let maximumPoint = 10
    private let pointColor: UIColor = .red
    
    @IBInspectable
    private var pointSize: CGSize = CGSize(width: 1, height: 1)
    
    override func draw(_ rect: CGRect) {
     
        generateData()
        let pointDistance = rect.width / CGFloat(maximumPoint)        
        let area = CGRect(x: rect.minX, y: CGFloat(dataset[0]), width: pointSize.width, height: pointSize.height)
        let point = UIBezierPath(ovalIn: area)
            
        pointColor.setFill()
        point.fill()
    }

    private func generateData() {
        dataset.append(90)
//        dataset.append(40)
//        dataset.append(100)
//        dataset.append(67)
//        dataset.append(85)
//        dataset.append(120)
//        dataset.append(113)
    }
}
