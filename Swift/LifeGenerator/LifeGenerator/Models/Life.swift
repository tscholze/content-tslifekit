//
//  Life.swift
//  LifeGenerator
//
//  Created by Tobias Scholze on 08.04.24.
//

import Foundation

/// My life as a data tree.
struct Life: Codable {
    /// Timestamp of the last content update
    let lastUpdated: String
    
    /// Structural version of the data set
    /// Example: 1.0.0
    let version: String
    
    /// Reading clients must me at least this version
    let minRequiredClientVersion: String
    
    /// Language of the content
    let language: Language
    
    /// Information to my self
    let persona: Persona
    
    /// Information to all my social media accounts
    let socialMediaProfiles: [SocialMedia]
    
    /// My curriculum vitae
    let curriculumVitae: CurriculumVitae
    
    ///  Information to all my content creation accounts
    let contentCreationProfiles: [ContentCreation]
    
    /// List of projects I'm working in my sparetime
    let projectFamilies: [ProjectFamily]
    
    // MARK: - CodingKey -
    
    enum CodingKeys: String, CodingKey {
        case lastUpdated = "last_updated"
        case version
        case minRequiredClientVersion = "min_required_client_version"
        case language
        case persona
        case socialMediaProfiles = "socialmedia"
        case curriculumVitae = "curriculumvitae"
        case contentCreationProfiles = "contentcreation"
        case projectFamilies = "projectfamilies"
    }
}

// MARK: - Data factories -

extension Life {
    /// Gets the [Life] of a tscholze
    static var tscholze: Life {
        return .init(
            lastUpdated: ISO8601DateFormatter().string(from: .now),
            version: "1.0.0",
            minRequiredClientVersion: "1",
            language: .en,
            persona: .tscholze,
            socialMediaProfiles: .tscholze,
            curriculumVitae: .tscholze,
            contentCreationProfiles: .tscholze,
            projectFamilies: .tscholze
        )
    }
}
