//
//  GradientRectangles.swift
//  SwiftUI-Animations
//
//  Created by Kalabishka Ivan on 18.06.2021.
//

import SwiftUI

struct GradientRectangles: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(0..<3) { iteration in
                    Rectangle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [.green, .blue]),
                                startPoint: UnitPoint(x: 0, y: 1),
                                endPoint: UnitPoint(x: 1, y: 0)
                            )
                        )
                        .frame(
                            width: geometry.size.width * 0.7,
                            height: geometry.size.height * 0.7
                        )
                        .rotationEffect(.degrees(Double(iteration) * 60)) // поворот элементов интерфейса
                }
                Image(systemName: "airplane")
                    .resizable()
                    .rotationEffect(.degrees(-90))
                    .opacity(0.5)
                    .scaleEffect(0.7)
            }
        }
        .frame(width: width, height: height)
    }
}

struct GradientRectangles_Previews: PreviewProvider {
    static var previews: some View {
        GradientRectangles(width: 100, height: 100)
    }
}
