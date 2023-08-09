//
//  Badge.swift
//  Landmark
//
//  Created by Denny Arfansyah on 09/08/23.
//

import SwiftUI

struct Badge: View {
    
    var badgeSymbol: some View {
        ForEach(0..<8) { index in
            RotateBadgesSymbol(
                angle: Angle(degrees: Double(index) / Double(8)) * 360
            )
        }
        .opacity(0.5)
    }
    
    var body: some View {
        ZStack {
            BadgeBackground()
            
            GeometryReader { geometry in
                badgeSymbol
                    .scaleEffect(1.0/4.0, anchor: .top)
                    .position(x: geometry.size.width / 2.0, y: (3.0/4.0) * geometry.size.height)
            }
        }
        .scaledToFit()
    }
}

struct Badges_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
