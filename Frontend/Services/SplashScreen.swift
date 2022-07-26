//
//  SplashScreen.swift
//  Frontend
//
//  Created by Sergio Deleon Jr. on 7/23/22.
//

import Foundation
import SwiftUI

struct SplashScreen: View
{
    @State var isActive:Bool = false

    var body: some View
    {

    ZStack
    {
        if self.isActive
        {
            //UserInfoView()
        }
        else
        {
            Text("Test")
            .font(.custom("Impact", size: 50))
            .foregroundColor(.white)

            Divider()
            Spacer()
        }
    }
        .edgesIgnoringSafeArea(.all)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(isActive ? Color(.systemBackground) : Color("Theme"))
        .animation(.default, value: isActive)
        .onAppear
        {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5)
            {
            self.isActive = true
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider
{
    static var previews: some View
    {
        SplashScreen()
    }
}

