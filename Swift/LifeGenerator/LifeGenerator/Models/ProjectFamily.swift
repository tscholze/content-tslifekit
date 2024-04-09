//
//  ProjectFamily.swift
//  LifeGenerator
//
//  Created by Tobias Scholze on 08.04.24.
//

import Foundation

/// A project family is a group of spare time projects that covers more or less the same topic
struct ProjectFamily: Codable {
    
    /// Name of the group
    let name: String
    
    /// Description what the group is all about
    let description: String
    
    /// Image url to the logo of the family
    let imageUrl: String?
    
    /// Projects that are grouped under the same name
    let projects: [Project]
    
    // MARK: - CodingKey -
    
    enum CodingKeys: String, CodingKey {
        case name
        case description
        case imageUrl = "image_url"
        case projects
    }
    
    /// A spare time development project
    struct Project: Codable {
        /// Name of the project
        let name: String
        
        /// Describes what the project covers
        let description: String
        
        /// Image url to the logo, screenshot of the project
        let imageUrl: String?
        
        /// Url to the GitHub repository
        let githubUrl: String
        
        /// Which programming language is used the most
        let programmingLanguage: ProgrammingLanguage
        
        // MARK: - CodingKey -
        
        enum CodingKeys: String, CodingKey {
            case name
            case description
            case imageUrl
            case githubUrl
            case programmingLanguage = "programming_language"
        }
        
        /// Selectable programming languages in which a `Project` is written.
        enum ProgrammingLanguage: String, Codable {
            /// Jave, Java Spring, Java EE, Jakarta, etc.
            case java
            
            /// Swift, SwiftUI
            case swift
            
            /// Kotlin, KMM, Kotlin/Native, Compose
            case kotlin
            
            /// C#, .NET
            case csharp
            
            /// Python
            case python
            
            /// Flutter, Dart
            case flutter
            
            /// Powershell
            case powershell
        }
    }
}

// MARK: - Data factories -

extension [ProjectFamily] {
    /// Project families that are developed by tscholze
    static var tscholze: [ProjectFamily] {
        return [
            // KPi
            .init(
                name: "KPi - Kotlin/Native <3 Pi",
                description: "Kotlin/Native meets Raspberry Pi meets Pimoroni Sensors",
                imageUrl: "https://tscholze.github.io/blog/files/pf-kpi-logo.png",
                projects: [
                    .init(
                        name: "KPi.Enviro",
                        description: "Reading values from a BMP280 and TC sensor in addition to controlling some LEDs",
                        imageUrl: "https://github.com/tscholze/kotlin-kpi-native-enviro/raw/main/__docs/socialmedia.png",
                        githubUrl: "https://github.com/tscholze/kotlin-kpi-native-enviro/",
                        programmingLanguage: .kotlin
                    ),
                    .init(
                        name: "KPi.Blinkt",
                        description: "Web- and curl-interface to let a Pimoroni Blinkt HAT shine, morse and do other things.",
                        imageUrl: "https://raw.githubusercontent.com/tscholze/kotlin-kpi-native-blinkt/main/_docs/socialmedia.png",
                        githubUrl: "https://github.com/tscholze/kotlin-kpi-native-blinkt/",
                        programmingLanguage: .kotlin
                    )
                ]
            ),
            // KMM
            .init(
                name: "Kotlin and Compose Multiplatform prototypes ",
                description: "With Kotlin and Compose Multiplatform there's a new player in the cross platform development world. Let's see how it performs!",
                imageUrl: "https://github.com/tscholze/blog/blob/main/docs/files/pf-kmp-logo.png?raw=true",
                projects: [
                    .init(
                        name: "Kennzeichner",
                        description: "The app(s) will provide a look for for German license plate IDs such as 'A' for Augsburg, 'M' for Munich, etc. pp. The long time goal is to roll out this limited set of features to more KMP-able platforms such as desktop or the web.",
                        imageUrl: "https://github.com/tscholze/blog/blob/main/docs/files/pf-hb-kennzeichner.png?raw=true",
                        githubUrl: "https://github.com/tscholze/kotlin-kmm-kennzeichner?tab=readme-ov-file",
                        programmingLanguage: .kotlin
                    )
                ]
            ),
            // HomeBear
            .init(
                name: "HomeBear - Windows 10 + Pi + Pimoroni = <3",
                description: "Windows 10 IoT Core meets C# and .NET, Raspberry Pi, meets Pimoroni HATs",
                imageUrl: "https://github.com/tscholze/blog/blob/main/docs/files/pf-hb-logo-2.png?raw=true",
                projects: [
                    .init(
                        name: "HomeBear.Tilt",
                        description: "Using a robot tilting arm to have a camera that detects your faces? This UWP provides such PoC functionality. All running on a Raspberry Pi.",
                          imageUrl: "https://github.com/tscholze/dotnet-iot-homebear-tilt/raw/master/docs/on-device-screenshot.jpg",
                          githubUrl: "https://github.com/tscholze/dotnet-iot-homebear-tilt",
                          programmingLanguage: .csharp
                    ),
                    .init(
                        name: "HomeBear.Rainbow",
                        description: "Controlling a Pimoroni RainbowHAT using Windows 10 IoT Core and C#",
                        imageUrl: "https://github.com/tscholze/blog/blob/main/docs/files/pf-hb-rainbow.png?raw=true",
                        githubUrl: "https://github.com/tscholze/dotnet-iot-homebear-rainbow",
                        programmingLanguage: .csharp
                    ),
                    .init(
                        name: "HomeBear.Blinkt",
                        description: "An IoT app that provides an on-device UI for controlling multiple aspects of a Pimoroni BlinktHAT",
                        imageUrl: "https://github.com/tscholze/blog/blob/main/docs/files/pf-hb-blinkt.png?raw=true",
                        githubUrl: "https://github.com/tscholze/dotnet-iot-homebear-blinkt",
                        programmingLanguage: .csharp
                    )
                ]
            ),
            // Surface Duo
            .init(
                name: "Surface Duo shenanigans", 
                description: "Two separate screens on a single device? Yes, the Duo was a great device",
                imageUrl: "https://github.com/tscholze/blog/blob/main/docs/files/pf-duo-logo.png",
                projects: [
                    .init(
                        name: "Road To Surface Duo",
                        description: "In anticipation of the release of the Microsoft Surface Duo, I wrote for Dr. Windows wrote a multi-part series of articles that should make you want to develop for the device",
                        imageUrl: "https://github.com/tscholze/xamarin-road-to-surface-duo/raw/master/docs/ui-app-duo.jpg",
                        githubUrl: "https://github.com/tscholze/xamarin-road-to-surface-duo",
                        programmingLanguage: .csharp
                    ),
                    .init(
                        name: "RssBook",
                        description: "A RSS reader in a book-ish design that uses both screens of the Surface Duo",
                        imageUrl: "https://github.com/tscholze/flutter-surfaceduo-rssbook/raw/main/docs/screenshots-ds.png?raw=true",
                        githubUrl: "https://github.com/tscholze/flutter-surfaceduo-rssbook",
                        programmingLanguage: .flutter
                    ),
                    .init(
                        name: "Hinge It!",
                        description: "A gamification app that uses the hinge of the Duo to guess it's angle.",
                        imageUrl: "https://github.com/tscholze/xamarin-surface-duo-hinge-it/blob/master/docs/summary.png?raw=true",
                        githubUrl: "https://github.com/tscholze/xamarin-surface-duo-hinge-it",
                        programmingLanguage: .csharp
                    ),
                    .init(
                        name: "DuoBahn",
                        description: "An app that shows you all kind of information around German Autobahn information and webcams. Cancelled due to shut down webcams because of Ukrainian war",
                        imageUrl: "https://www.drwindows.de/news/wp-content/uploads/2022/08/duo_bahn_app.png",
                        githubUrl: "https://github.com/tscholze/kotlin-surfaceduo-duobahn",
                        programmingLanguage: .kotlin
                    )
                ]
            ),
            // Android Things
            .init(
                name: "Android Things Tinkerings",
                description: "Google Android Things on a Raspberry Pi was a very fun time and I tinkered some apps that uses Pimoroni Hardware.",
                imageUrl: "https://github.com/tscholze/blog/blob/main/docs/files/pf-at-logo",
                projects: [
                    .init(
                        name: "Things Pager",
                        description: "Show your Firebase messages on a 8-segment display using a Raspberry Pi",
                        imageUrl: "https://github.com/tscholze/java-android-things-firebase-pager/raw/master/docs/scheme.png",
                        githubUrl: "https://github.com/tscholze/java-android-things-firebase-pager",
                        programmingLanguage: .java
                    ),
                    .init(
                        name: "ToboT",
                        description: "Control a Pimoroni STS Pi vehicle via a web interface and your voice. Everything is based on an Android Things app that runs on a Raspberry Pi",
                        imageUrl: "https://tscholze.github.io/blog/assets/java-android-tobot-5.png",
                        githubUrl: "https://github.com/tscholze/java-android-things-tobot",
                        programmingLanguage: .java
                    )
                ]
            ),
            .init(
                name: "Python wrangling",
                description: "Sometimes I need to use the snake to catch some fun",
                imageUrl: "https://github.com/tscholze/blog/blob/main/docs/files/pf-python-raspberry-logo.png",
                projects: [
                    .init(
                        name: "Enviro HAT to Google Drive Sheets logger",
                        description: "Uses the Pimoroni Enviro HAT to log specific values to a Google Drive Sheets document.",
                        imageUrl: "https://raw.githubusercontent.com/tscholze/python-enviro-gdocs-logger/master/docs/dashboard.png",
                        githubUrl: "https://github.com/tscholze/python-enviro-gdocs-logger",
                        programmingLanguage: .python
                    ),
                    .init(
                        name: "Enviro HAT to Excel Online logger",
                        description: "Uses the Pimoroni EnviroHAT to log specific values via Microsoft Graph API to an Online Excel Sheet document.",
                        imageUrl: "https://github.com/tscholze/python-enviro-excel-online-logger/blob/master/docs/dashboard.PNG?raw=true",
                        githubUrl: "https://github.com/tscholze/python-enviro-excel-online-logger",
                        programmingLanguage: .python
                    )
                ]
            )
        ]
    }
}
