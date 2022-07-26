//
//  ContentView.swift
//  Frontend
//
//  Created by Sergio Deleon Jr. on 7/19/22.
//

import Foundation
import SwiftUI

struct ContentView: View
{
    @StateObject var userinfo = UserInfo()

    var body: some View
    {
        UserInfoView() //Setings it as an environment to use it in all views
        .environmentObject(userinfo)
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ContentView()
    }
}

