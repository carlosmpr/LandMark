//
//  LandMarkList.swift
//  Landmark
//
//  Created by Carlos Polanco on 8/23/22.
//

import SwiftUI

struct LandMarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false

    var filteredLandmarks: [Landmark] {
           modelData.landmarks.filter { landmark in
               (!showFavoritesOnly || landmark.isFavorite)
           }
       }

    var body: some View {
         NavigationView {
             List {
                 
                 Toggle(isOn: $showFavoritesOnly){
                        Text("Favorites only")
                    }

                 
                 ForEach(filteredLandmarks) { landmark in
                     NavigationLink {
                         Detail(landmark: landmark)
                     } label: {
                         LadmarkRow(landmark: landmark)
                     }
                 }
             }
             .navigationTitle("Landmarks")
         }
     }
 }

struct LandMarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkList()
            .environmentObject(ModelData())
    }
}
