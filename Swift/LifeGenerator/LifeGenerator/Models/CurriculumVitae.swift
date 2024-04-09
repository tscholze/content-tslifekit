//
//  CurriculumVitae.swift
//  LifeGenerator
//
//  Created by Tobias Scholze on 08.04.24.
//

import Foundation

/// A CV-inspired list of the most recent employments and educational enrollments.
struct CurriculumVitae: Codable {
    /// Current employment
    let currentEmployment: Employment
    
    /// The most recent employments containing the current one
    let recentEmployments: [Employment]
    
    /// Most significant educational enrollments
    let educations: [Education]
    
    // MARK: - Coding Keys -
    
    enum CodingKeys: String, CodingKey {
        case currentEmployment = "current_employment"
        case recentEmployments = "recent_employments"
        case educations
    }
    
    // MARK: - CurriculumVitae.Employment -
    
    struct Employment: Codable {
        /// Company name
        let company: String
        
        /// My tasks during my time at the company
        let tasks: [String]
        
        /// My highest ranking role
        let role: String
        
        /// Date string I joined the company
        /// E.g. 2013-04.01 - April 1st,  2013
        let joined: String
        
        /// Date string I left the company
        /// If nil, I never left it, yet.
        /// E.g. 2015-10-31 - October 31th ,2015
        let left: String?
    }
    
    // MARK: - CurriculumVitae.Education -
    
    struct Education: Codable {
        /// Name of the instituation
        let name: String
        
        /// Free text description
        /// E.g. field of science
        let description: String
        
        /// Highest graduation during my time at the instituation
        let graduation: String
        
        /// Year I graduated.
        /// E.g. 2013
        let yearOfGraduation: Int
        
        // MARK: - Coding Keys -
        
        enum CodingKeys: String, CodingKey {
            case name
            case description
            case graduation
            case yearOfGraduation = "year_of_graduation"
        }
    }
}

// MARK: - Data factories -

extension CurriculumVitae {
    /// Gets tscholze's CV
    static var tscholze: CurriculumVitae {
        let anfema = Employment(
            company: "anfema GmbH",
            tasks: [
                "Planning, development and maintanance of B2B grade for iOS and iPadOS with focus on HR and industriy 4.0",
                "Helping customers to understand how apps can transform their work life",
                "Onboarding of new team members",
                "Planning and management of multi-division tasks"
            ],
            role: "Senior Software Engineer",
            joined: "2015-11-01",
            left: nil
        )
        
        return .init(
            currentEmployment: anfema,
            recentEmployments: [
                anfema,
                .init(
                    company: "NCR Germany",
                    tasks: [
                        "Maintanance of a management platform for ATMs in the GSA (DACH) region",
                        "Creating concepts on how to modernise the user expierence of the platform"
                    ],
                    role: "Java Spring Developer",
                    joined: "2015-04-01",
                    left: "2015-11-31"
                ),
                .init(
                    company: "Media Decision GmbH",
                    tasks: [
                        "Planning and development of an ad real time bidding system written in Java EE and JSF",
                        "Developing a ad platform agnostic analytic tool for performance marketing KPIs in C# and Silverlight"
                    ],
                    role: "C# / Java EE Developer",
                    joined: "2013-04-01",
                    left: "2015-03-31"
                )
            ],
            educations: [
                .init(
                    name: "University of Applied Sciene Augsburg",
                    description: "Course of study: Computer Science",
                    graduation: "BSc.",
                    yearOfGraduation: 2013
                ),
                .init(
                    name: "Berufsoberschule Augsburg", 
                    description: "Subject: Mathematic, Physics",
                    graduation: "High school diploma",
                    yearOfGraduation: 2009
                )
            ]
        )
    }
}
