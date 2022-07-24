//
//  MainView.swift
//  Frontend
//
//  Created by Sergio Deleon Jr. on 7/23/22.
//

import SwiftUI

struct TabBarView: View
{
    @State var tabSelection = 1

    init()
    {
    UITabBar.appearance().backgroundColor = UIColor.blue
    UITabBar.appearance().unselectedItemTintColor = UIColor.white
    UITabBar.appearance().isOpaque = false
    }


    let testArray = (1...100).map
    {
    URL(string: "https://picsum.photos/500/1000?random=\($0)")!
    }

    var body: some View
    {
    TabView
        {
        HomeView()
            .tabItem
            {
            Image(systemName: "house.fill")
                //Text("Home")
            }

        Text("Search view")
            .tabItem
            {
            Image(systemName: "magnifyingglass")
                //Text("Search")
            }

        Text("Photo view")
            .tabItem {
                Image(systemName: "photo.fill")
                    //Text("Photos")
            }

        Text("Message view")
            .tabItem {
                Image(systemName: "envelope.fill")
                    //Text("Messages")
            }

        ProfileView()
            .tabItem {
                Image(systemName: "person.crop.circle.fill")
                    //Text("Profile")
            }

        } //TabView
        .accentColor(.black)
    }
}

struct TabBarView_Previews: PreviewProvider
{
    static var previews: some View
    {
    TabBarView()
        .previewDevice("iPhone 11 Pro")

    TabBarView()
    }
}
