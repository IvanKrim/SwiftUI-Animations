//
//  CurvesView.swift
//  SwiftUI-Animations
//
//  Created by Kalabishka Ivan on 18.06.2021.
//

import SwiftUI

struct CurvesView: View {
    let width: CGFloat
    let height: CGFloat
    
    
    
    var body: some View {
        
        // MARK: - aspect ratio
        GeometryReader { geometry in
            let size = min(geometry.size.width, geometry.size.height)
            let middle = size / 2 // 100
            let nearLine = size * 0.1 // 20
            let farLine = size * 0.9 // 180
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: nearLine))
            }
        }
        .frame(width: width, height: height)
    }
}

struct CurvesView_Previews: PreviewProvider {
    static var previews: some View {
        CurvesView(width: 200, height: 200)
    }
}
