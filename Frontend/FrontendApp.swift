//
//  FrontendApp.swift
//  Frontend
//
//  Created by Sergio Deleon Jr. on 7/19/22.
//

import SwiftUI
import Client

@main
struct FrontendApp: App {
    let client = Client(baseURL: URL(string: "http://localhost:8080")!)
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .task {
                    do {
                        let response = try await client.createPost()
                        print(response)
                    }
                    catch {
                        print(error)
                    }
                }
        }
    }
}
