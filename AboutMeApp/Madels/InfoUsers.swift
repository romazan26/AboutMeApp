//
//  InfoUsers.swift
//  AboutMeApp
//
//  Created by Роман on 13.05.2023.
//

struct User {
    let userName: String
    let userPassword: String
    let userInfo: [UserInfo]
    
    static func getUser() -> [User]{
        [
            User(
                userName: "user",
                userPassword: "pasword",
                userInfo: [UserInfo(
                    name: "Roman",
                    surname: "Glavackii",
                    company: "restaurant IMPIRE",
                    post: "executive director",
                    biography: "date of birhtday 29.04.1990")
                          ]
            )
        ]
    }
}

struct UserInfo {
    let name, surname, company, post, biography: String

}
