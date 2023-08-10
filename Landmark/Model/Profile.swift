//
//  Profile.swift
//  Landmark
//
//  Created by Denny Arfansyah on 10/08/23.
//

import Foundation

struct Profile {
    var username: String
    var preferNotifications = true
    var seasonalPhoto = Season.winter
    var goalData = Date()
    
    static let `default` = Profile(username: "denny_arf")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌹"
        case summer = "🌞"
        case autumn = "🍁"
        case winter = "❄️"
        
        var id: String { rawValue }
    }
}
