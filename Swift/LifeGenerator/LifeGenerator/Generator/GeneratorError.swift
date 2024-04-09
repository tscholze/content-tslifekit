//
//  GeneratorError.swift
//  LifeGenerator
//
//  Created by Tobias Scholze on 09.04.24.
//

import Foundation

/// Describes types of `Error` than can be raised during `Generator` usage.
enum GeneratorError: LocalizedError {
    /// Invalid data object structure with given error string.
    case invalidData(String)
    
    /// Failed transformation from json objects to string.
    case transformationFailed
    
    /// Failed generating of the json file target path
    case invalidTargetPath
}
