////
////  userTable.swift
////  App
////
////  Created by Terrick Mansur on 8/17/19.
////
//
//import Foundation
//
//struct UsersTable: Codable {
//    let name: String
//    let users: [User.Renderable]
//    let showingFrom: Int
//    let showingTo: Int
//    let of: Int
//    let currentPage: Int
//    let pageCount: Int
//
//    init(name: String, users: [User.Renderable], of: Int, currentPage: Int) {
//
//        let pageLenght = 10
//
//        let maximumPageNeeded = Int(ceilf(Float(of) / Float(pageLenght)))
//        let minimizedCurrentPage = min(currentPage, (maximumPageNeeded-1))
//
//        self.name = name
//        self.users = users
//        showingFrom = (minimizedCurrentPage * pageLenght) + 1
//        showingTo = (minimizedCurrentPage * pageLenght) + users.count
//        self.of = of
//        self.currentPage = minimizedCurrentPage
//        pageCount = maximumPageNeeded
//    }
//}
