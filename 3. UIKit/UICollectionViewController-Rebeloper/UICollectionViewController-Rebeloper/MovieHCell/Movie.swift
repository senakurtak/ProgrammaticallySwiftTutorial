//
//  Movie.swift
//  UICollectionViewController-Rebeloper
//
//  Created by Sena Kurtak on 7.10.2022.
//

import UIKit

final class Movie {
    let title: String?
    let genre: String?
    let coverImg: UIImage?
    
    init(title: String?, genre: String?, coverImg: UIImage?) {
        self.title = title
        self.genre = genre
        self.coverImg = coverImg
    }
}

var movieArr = [
    Movie(title: "Aqua Man", genre: "Action", coverImg: UIImage(named:"midwayimg")),
    Movie(title: "Avatar", genre: "Action", coverImg: UIImage(named:"avartarimg")),
    Movie(title: "Avengers", genre: "Action", coverImg: UIImage(named:"avengersimg")),
    Movie(title: "Frozen", genre: "Action", coverImg: UIImage(named:"frozenimg")),
    Movie(title: "Iron Man", genre: "Action", coverImg: UIImage(named:"ironmanimg")),
    Movie(title: "Lord of War", genre: "Action", coverImg: UIImage(named:"lordofwarimg")),
    Movie(title: "Midway", genre: "Action", coverImg: UIImage(named:"midwayimg")),
    Movie(title: "Star Wars", genre: "Action", coverImg: UIImage(named:"starwarsimg")),
    Movie(title: "God Father", genre: "Action", coverImg: UIImage(named:"thegodfatherimg")),
    Movie(title: "Titanic", genre: "Drama", coverImg: UIImage(named:"titanicimg"))
]
