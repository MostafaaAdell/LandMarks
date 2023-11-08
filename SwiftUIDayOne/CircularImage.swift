//
//  CircularImage.swift
//  SwiftUIDayOne
//
//  Created by Mustafa on 02/10/2023.
//

import SwiftUI

struct CircularImage: View {
    var image:String
    var body: some View {
        Image(image)
            .resizable()
            .frame(width: 200,height: 200,alignment: .center)
            .clipShape(Circle())
            
    }
}

struct CircularImage_Previews: PreviewProvider {
    static var previews: some View {
        CircularImage(image: "park" )
    }
}
