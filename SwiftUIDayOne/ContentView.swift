//
//  ContentView.swift
//  SwiftUIDayOne
//
//  Created by Mustafa on 02/10/2023.
//

import SwiftUI

struct ContentView: View {
  //  @State private var parkName = ""
 //   @State private var ChamgeText = "Park Family"
    var landmark:Landmark
    var body: some View {
        ScrollView {
            MapView(landmarkCoordinate: landmark.loacationCoordinates)
                .frame(height: 300)
                .edgesIgnoringSafeArea(.top)
            CircularImage(image: landmark.imageName)
                .offset(x:0,y:-130)
                .padding(.bottom ,-130)
            VStack (alignment: .leading){
                Text(landmark.name)
                    .font(.largeTitle)
                    .foregroundColor(Color.green)
                HStack{
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }.font(.subheadline)
                    .foregroundColor(.secondary)
                Divider()
                Text(landmark.description)
                Text("This is a Family Park")
              
                
            }.padding()
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(landmark: landmarks[0])
    }
}
