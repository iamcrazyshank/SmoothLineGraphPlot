//
//  ViewController.swift
//  SmoothLineGraph
//
//  Created by Shashank Chandran on 12/27/18.
//  Copyright © 2018 Shashank Chandran. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

   
    @IBOutlet weak var firstBezierView: BeizerGraph!
    
    var dataPoints = [0]
   

    
    var xAxisPoints : [Double] {
        var points = [Double]()
        for i in 0..<dataPoints.count {
            let val = (Double(i)/5.0) * Double(self.firstBezierView.bounds.size.width)
            points.append(val)
        }
        
        return points
    }
    
    var yAxisPoints: [Double] {
        var points = [Double]()
        for i in dataPoints {
            let val = (Double(i)/255) * Double(self.firstBezierView.bounds.size.height)
            points.append(val)
        }
        
        return points
    }
    
    var graphPoints : [CGPoint] {
        var points = [CGPoint]()
        for i in 0..<dataPoints.count {
            let val = CGPoint(x: self.xAxisPoints[i], y: self.yAxisPoints[i])
            points.append(val)
        }
        
        return points
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstBezierView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        self.firstBezierView.layoutSubviews()
    }
}

extension ViewController: BezierViewDataSource {
    
    func bezierViewDataPoints(bezierView: BeizerGraph) -> [CGPoint] {
        
        return graphPoints
    }

}

