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
        .withAuthProvider(BearerAuthProvider(), forAuthType: .bearer)
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .task {
                    do {
//                        let user = try await client.auth.login(username: "test", password: "testpw")
                        let getUser = try await client.user.get(identifier: "test", postsPagination: .init(limit: 0, page: 0))
                        print(getUser.data.posts.first)
                    }
                    catch {
                        print(error)
                    }
                }
        }
    }
}


public class BearerAuthProvider: AuthProvider {
    private(set) var token: String?
    
    public func store(_ credentials: String) {
        self.token = credentials
    }
    
    public func clear() {
        self.token = nil
    }
    
    public func provideCredentials() -> AuthProviderResult {
        guard let token = token else {
            return .failure
        }
        return .success("Bearer \(token)")
    }
}

