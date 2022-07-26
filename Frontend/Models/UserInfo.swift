//
//  UserInfo.swift
//  Frontend
//
//  Created by Sergio Deleon Jr. on 7/23/22.
//

import Foundation
import SwiftUI

class UserInfo: ObservableObject
{
    //User Data not final just for testing
    @State var name = ""
    @State var bio = ""
    @State var age = ""
    @State var location = ""
    @State var phone = ""
    @State var authcode = ""
    @State var password = ""
    @State var pagenumber = 0
}
