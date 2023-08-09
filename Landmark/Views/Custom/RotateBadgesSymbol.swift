//
//  RotateBadgesSymbol.swift
//  Landmark
//
//  Created by Denny Arfansyah on 09/08/23.
//

import SwiftUI

struct RotateBadgesSymbol: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotateBadgesSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotateBadgesSymbol(angle: Angle(degrees: 5))
    }
}
