//
//  UserInfoView.swift
//  Frontend
//
//  Created by Sergio Deleon Jr. on 7/24/22.
//

import Foundation
import SwiftUI

struct UserInfoView: View
{
    @EnvironmentObject var userInfo : UserInfo

    var body: some View
    {
        VStack
        {
            Text("Name")
            .font(.largeTitle)
            .foregroundColor(.black)
            .fontWeight(.heavy)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top,25)

            HStack(spacing:15)
            {
                TextField("Name", text: $userInfo.name)
                .padding(.vertical,12)
                .padding(.horizontal)
                //.frame(width: 60)
                .shadow(color: Color.black.opacity(0.05), radius: 5, x: 5, y:5)
                .shadow(color: Color.black.opacity(0.05), radius: 5, x: -5, y:-5)


            }
            .padding(.top)
            Spacer(minLength: 0)

        Button(action: {}, label:
        {
            HStack
            {
                Spacer()
                Text("Next")
                Spacer()
                Image(systemName: "arrow.right")


            }
            .foregroundColor(.white)
            .padding(.vertical,10)
            .padding(.horizontal)
            .background(Color("Red"))
            .cornerRadius(3.0)

        })
        .padding(.top)

        }
    }
}

struct UserInfoView_Previews: PreviewProvider
{
    static var previews: some View
    {
        UserInfoView()
    }
}
