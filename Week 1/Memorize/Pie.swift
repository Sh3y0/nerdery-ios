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
    
    func path(in rect: CGRect) -> Path {
        
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radious = min(rect.width, rect.height) / 2
        
        let start = CGPoint(
            x: center.x + radious * CGFloat(cos(startAngle.radians)),
            y: center.y + radious * CGFloat(sin(startAngle.radians)
        )
        
        var p = Path()
        p.move(to: center)
        
        return p
    }
}

