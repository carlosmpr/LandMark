//
//  LadmarkRow.swift
//  Landmark
//
//  Created by Carlos Polanco on 8/23/22.
//

import SwiftUI

struct LadmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LadmarkRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    static var previews: some View {
        Group {
            LadmarkRow(landmark: landmarks[0])
            LadmarkRow(landmark: landmarks[2])
              
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
