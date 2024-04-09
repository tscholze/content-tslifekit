//
//  SocialMedia.swift
//  LifeGenerator
//
//  Created by Tobias Scholze on 08.04.24.
//

import Foundation

/// Information that covers a social media account of mine.
struct SocialMedia: Codable {
    /// Platform on which the account was created
    let platform: Platform
    
    /// Username
    let username: String
    
    /// URL to the account's profile page
    let profileUrl: String
    
    // MARK: - CodingKey -
    
    enum CodingKeys: String, CodingKey {
        case platform
        case username
        case profileUrl = "profile_url"
    }
    
    // MARK: - ContentCreation.Platform -
    
    /// Describes the social media platform (service, provider).
    enum Platform: String, Codable {
        /// Twitter, X
        case twitter
        
        /// Any mastodon server
        case mastodon
        
        /// Instagram.com
        case instagram
        
        /// LinkedIn.com
        case linkedin
        
        /// GitHub.com
        case github
        
        // TODO: Check if these are "social media"
        
        /// YouTube.com
        case youtube
        
        /// TikTok.com
        case tiktok
    }
}

// MARK: - Data factories -

extension [SocialMedia] {
    /// Gets a list of all content creation profiles of tscholze
    static var tscholze: [SocialMedia] {
        return [
            .init(platform: .twitter, username: "@tobonaut", profileUrl: "https://twitter.com/tobonaut"),
            .init(platform: .mastodon, username: "@tobonaut", profileUrl: "https://mastodon.social/@tobonaut"),
            .init(platform: .instagram, username: "@the_stuttering_nerd", profileUrl: "https://www.instagram.com/the_stuttering_nerd/"),
            .init(platform: .linkedin, username: "Tobias Scholze", profileUrl: "https://www.linkedin.com/in/tobias-scholze-4301b5187/"),
            .init(platform: .github, username: "tscholze", profileUrl: "https://github.com/tscholze"),
            .init(platform: .tiktok, username: "The Stuttering Nerd", profileUrl: "https://www.tiktok.com/@the_stuttering_nerd")
        ]
    }
}
