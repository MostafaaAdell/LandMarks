//
//  LandmarkList.swift
//  SwiftUIDayOne
//
//  Created by Mustafa on 03/10/2023.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
            List(landmarks){ landmark in
                NavigationLink(destination: ContentView(landmark: landmark), label: {
                    LandMarkRow(landmark: landmark)
                })
                
            }
        }
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
