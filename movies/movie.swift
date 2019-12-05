//
//  File.swift
//  movies
//
//  Created by shereen on 10/19/19.
//  Copyright © 2019 shereen. All rights reserved.
//

import Foundation
class movie {
  //  var overview : String
  //  var title    : String
 //   var imageURl : String
  //  var rate  : Double
 //   var productionYear : String
    var overView: String
    var title : String
    var productionYear : String
    var imageUrl : String
    var rate : Double
    
    
//    init (overview : String , title    : String ,imageURl : String ,rate  : Double ,productionyear : String  ) {
//        self.overview = overview
//        self.title = title
//        self.rate = rate
//        self.productionyear = productionyear
//        self.imageURl = imageURl
//    }
    
    init(dictionary: [String:Any]) {
        self.overView = dictionary["overview"] as? String ?? ""
        self.title = dictionary["title"] as? String ??  ""
        
        
        
    
        self.imageUrl = "https://image.tmdb.org/t/p/original" + (dictionary["poster_path"] as? String ?? "")
    
    let releaseDate = dictionary["release_date"] as? String ?? ""
        self.productionYear = releaseDate.components(separatedBy: "-").first ?? ""
    // dih fun bt3ml substring lw 3iza a5od shahr [1]
    self.rate = dictionary["vote_average"] as? Double ?? 0
}
    
}
