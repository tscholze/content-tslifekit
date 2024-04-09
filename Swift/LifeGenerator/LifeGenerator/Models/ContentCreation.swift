//
//  ContentCreation.swift
//  LifeGenerator
//
//  Created by Tobias Scholze on 08.04.24.
//

import Foundation

/// Information that covers a content creation account of mine.
struct ContentCreation: Codable {
    /// Content's platform
    let platform: Platform
    
    /// Language of the content
    let language: Language
    
    /// Name of the account
    let name: String
    
    /// Explains what the visitor could expect content-wise
    let description: String
    
    /// URL to the account's profile
    let profileUrl: String
    
    // MARK: - CodingKey -
    
    enum CodingKeys: String, CodingKey {
        case name
        case language
        case description
        case platform
        case profileUrl = "profile_url"
    }
    
    // MARK: - ContentCreation.Platform -
    
    /// Describes the content creation platform (service, provider).
    enum Platform: String, Codable {
        /// TikTok.com
        case tiktok
        
        /// YouTube.com
        case youtube
        
        /// Instagram.com
        case instagram
        
        /// Medium.com
        case medium
        
        /// The platform is a news site (e.g. drwindows.de)
        case news
        
        /// The platform is a personal blog
        case blog
        
        /// The platform is a Podcast hoster or provider
        case podcast
    }
}

// MARK: - Data factories -

extension [ContentCreation] {
    /// Gets a list of all content creation profiles of tscholze
    static var tscholze: [ContentCreation] {
        return [
            .init(
                platform: .youtube,
                language: .de,
                name: "Tobias Scholze - The Stuttering Nerd",
                description: "From the life of a stuttering nerd with multiple sclerosis.",
                profileUrl: "https://www.youtube.com/user/TobiasScholze"
            ),
            .init(
                platform: .tiktok,
                language: .de,
                name: "The Stuttering Nerd",
                description: "Education about the topics of stuttering, multiple sclerosis and nerdiness.",
                profileUrl: "https://www.tiktok.com/@the_stuttering_nerd"
            ),
            .init(
                platform: .instagram,
                language: .de,
                name: "@the_stuttering_nerd",
                description: "Things from the everyday life of a nerd who stutters with multiple sclerosis.",
                profileUrl: "https://www.instagram.com/the_stuttering_nerd/"
            ),
            .init(
                platform: .news,
                language: .de,
                name: "Dr. Windows",
                description: "I write articles about the fun of IT and its tinkering on one of the largest German-language Microsoft sites.",
                profileUrl: "https://www.drwindows.de/news/author/tobias"
            ),
            .init(
                platform: .medium,
                language: .en,
                name: "DualScreen Tobbo",
                description: "My toughts on playing around with the Microsoft Surface and its SDKs and showing the joy tinkering with this new device category.",
                profileUrl: "https://dualscreentobbo.medium.com"
            ),
            .init(
                platform: .medium,
                language: .de,
                name: "DevRel Tobbo",
                description: "It's my kind of role play in which I pretend I'm a DevRel engineer for various software development topics.",
                profileUrl: "https://devreltobbo.medium.com"
            ),
            .init(
                platform: .blog,
                language: .en,
                name: "Personal Blog",
                description: "My blog stores articles about things I made, I expierenced and all other information I do not want to forget.",
                profileUrl: "https://tscholze.github.io/blog/"
            ),
            .init(
                platform: .podcast,
                language: .de,
                name: "La-La-Laber doch! Der Stotter Podcast",
                description: "In this podcast experiment I would like to pull myself out of my comfort zone and dare to do something that I have always shied away from. I speak - in public and even in front of people who are unfamiliar with the picture.",
                profileUrl: "https://tscholze.github.io/podcast-la-la-laber-doch"
            )
        ]
    }
}

