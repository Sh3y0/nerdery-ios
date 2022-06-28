//
//  Pie.swift
//  Memorize
//
//  Created by Eliseo on 6/23/22.
//

import SwiftUI

struct Pie: Shape {
    var startAngle: Angle
    var endAngle: Angle
    var clockwise: Bool = false
    
    func path(in rect: CGRect) -> Path {
        
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radious = min(rect.width, rect.height) / 2
        
        let start = CGPoint(
            x: center.x + radious * CGFloat(cos(startAngle.radians)),
            y: center.y + radious * CGFloat(sin(startAngle.radians))
        )
        
        var p = Path()
        p.move(to: center)
        p.addLine(to: start)
        p.addArc(
            center: center,
            radius: radious,
            startAngle: startAngle,
            endAngle: endAngle,
            clockwise: !clockwise
        )
        
        p.addLine(to: center)
        
        return p
    }
}

