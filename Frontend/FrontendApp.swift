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
        }
    }
}


public class BearerAuthProvider: AuthProvider {
    public func handleAuth(forRequest urlRequest: inout URLRequest) -> AuthProviderResult {
        let value = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIyMjhEOEY5Qy1BODRDLTQwRjMtODk1OC03OUNGNEI1RDVCMDciLCJqdGkiOiI3MzYxQUEzNy1COENELTQxQkQtOUM1MC1FQjkyN0IxN0MwMzkifQ.WxcMMloVB1Q9GmBL4IKsNVerOjoArwSuKrPlVzqDpJg"
        
        return .success("Bearer \(value)")
    }
}

