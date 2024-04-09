//
//  Generator.swift
//  LifeGenerator
//
//  Created by Tobias Scholze on 09.04.24.
//

import Foundation

/// Life factory to generate export or import Life information
struct Generator {
    /// Exports Life objects to a JSON representation
    ///
    /// - Returns: Result on success with life json file path `URL`, on error with the causing `GeneratorError`.
    static func export() -> Result<URL, GeneratorError> {
        do {
            // 1. Try to encode objects
            let data = try JSONEncoder().encode(Life.tscholze)
            
            // 2. Try to convert json data to a string representation
            guard let json = String(data: data, encoding: .utf8) else {
                return .failure(.transformationFailed)
            }
            
            // 3. Create target url path
            let url = FileManager.default
                .urls(for: .documentDirectory, in: .userDomainMask)
                .first?
                .appending(path: "life.json")
            
            guard let url else {
                return .failure(.invalidTargetPath)
            }
            
            // 4. Try to write it to the path
            do {
                try json.write(to: url, atomically: true, encoding: .utf8)
            } catch {
                fatalError("Could not save json to path: '\(url.absoluteString)'")
            }
            
            // 5. Return success
            return .success(url)
        
        } catch {
            return .failure(.invalidData(error.localizedDescription))
        }
    }
}
