//
//  AwardsView.swift
//  SwiftUI-Animations
//
//  Created by Kalabishka Ivan on 18.06.2021.
//

import SwiftUI

struct AwardsView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    GradientRectangles(width: 250, height: 250)
                    PathView(width: 250, height: 250)
                }
            }
            .navigationBarTitle("")
        }
    }
}

struct AwardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
    }
}
