//
//  fetch.swift
//  SwiftUIDayOne
//
//  Created by Mustafa on 03/10/2023.
//

import Foundation

var landmarks:[Landmark] = load("landmarkData.json")

func load<T:Decodable> (_ fileName:String) ->T{
    var data :Data
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil)else{
        fatalError("Couldn't find the file name with \(fileName)")
    }
    do{
        data = try Data(contentsOf: file)
    }catch{
        fatalError("Couldn't find the file name with \(fileName)")
    }
    do{
        return try JSONDecoder().decode(T.self, from: data)
    }catch{
        fatalError("Couldn't find the file name with \(fileName)")

    }
}
