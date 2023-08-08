//
//  LandmarkList.swift
//  Landmark
//
//  Created by Denny Arfansyah on 08/08/23.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showOnlyFavorite = false
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (showOnlyFavorite || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showOnlyFavorite) {
                    Text("Favorite Only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
