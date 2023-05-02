//
//  Post.swift
//
//  Created by Omar Madjitov on 04/01/23.
//

import Foundation


import ParseSwift


struct Post: ParseObject {
    // These are required by ParseObject
    var objectId: String?
    var createdAt: Date?
    var updatedAt: Date?
    var ACL: ParseACL?
    var originalData: Data?

    // Your own custom properties.
    var caption: String?
    var ingredients: String?
    var user: User?
    var imageFile: ParseFile?
}


