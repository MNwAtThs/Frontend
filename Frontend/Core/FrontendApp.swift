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
                        let registerResult = try await client.auth.register(
                            username: "testusername",
                            email: "test@test.com",
                            password: "testpassword")
                        print("Registration complete:", registerResult)
                    }
                    catch {
                        print("Registration failed with error:", error)
                    }
                }
        }
    }
}
