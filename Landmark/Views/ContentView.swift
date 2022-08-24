//
//  ContentView.swift
//  Landmark
//
//  Created by Carlos Polanco on 8/23/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       LandMarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
