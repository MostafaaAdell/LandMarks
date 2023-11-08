//
//  LandMarkRow.swift
//  SwiftUIDayOne
//
//  Created by Mustafa on 03/10/2023.
//

import SwiftUI

struct LandMarkRow: View {
    
    var landmark: Landmark
    var body: some View {
        HStack{
            landmark.image.resizable()
                .frame(width: 50,height: 50,alignment: .center)
            Text(landmark.name)
            Spacer()
                
            
        }
    }
}

struct LandMarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkRow(landmark: landmarks[0])
    }
}
