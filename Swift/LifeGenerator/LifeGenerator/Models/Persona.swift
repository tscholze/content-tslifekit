//
//  Persona.swift
//  LifeGenerator
//
//  Created by Tobias Scholze on 08.04.24.
//

import Foundation

/// Summary of my most important personal information
struct Persona: Codable {
    /// Firstname without any middle name
    let firstname: String
    
    /// Lastname
    let lastname: String
    
    /// Highest acadamical title
    let academicTitle: String
    
    /// Languages I'm able to read, write, understand and maybe speak
    let languages: [Language]
    
    /// List of nicknames aka alter egos
    let nicknames: [String]
    
    /// Path to my current location
    /// E.g. Continent / Country / City
    let locationPath: [String]
    
    /// Year of birth
    /// E.g. 1988
    let yearOfBirth: Int
    
    // MARK: - CodingKey -
    
    enum CodingKeys: String, CodingKey {
        case firstname
        case lastname
        case academicTitle = "academic_title"
        case languages
        case nicknames
        case locationPath = "location_path"
        case yearOfBirth = "year_of_birth"
    }
}

// MARK: - Data factories -

extension Persona {
    /// Personal information of tscholze
    static var tscholze: Persona {
        return .init(
            firstname: "Tobias",
            lastname: "Scholze",
            academicTitle: "BSc.",
            languages: [.de, .en],
            nicknames: ["The Stuttering Nerd", "Tobonaut"],
            locationPath: ["Europe", "Germany", "Bavaria", "Augsburg"],
            yearOfBirth: 1988
        )
    }
}
