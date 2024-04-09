//
//  ContentView.swift
//  LifeGenerator
//
//  Created by Tobias Scholze on 09.04.24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var targetPath: URL? = nil
    @State private var lastKnownError: LocalizedError?
    
    var body: some View {
        VStack {
            Button("Export Life") {
                let result = Generator.export()
                switch result {
                case .success(let url):
                    targetPath = url
                
                case .failure(let error):
                  onGenerationFailed(withError: error)
                }
            }
            
            if let targetPath {
                Button("Open folder") {
                    onOpenFolderTapped(url: targetPath)
                }
            }
        }
        .padding()
    }
}

// MARK: - Actions -

extension ContentView {
    private func onOpenFolderTapped(url: URL) {
        NSWorkspace.shared.activateFileViewerSelecting([url])
    }
    
    private func onGenerationFailed(withError error: GeneratorError) {
        targetPath = nil
    }
}

// MARK: - Preview -

#Preview {
    ContentView()
}
