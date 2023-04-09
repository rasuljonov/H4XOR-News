//
//  PostData.swift
//  H4XOR News
//
//  Created by hrasuljonov on 06/04/23.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
    
}

struct Post: Decodable, Identifiable{
    var id: String {
        return objectID
    }
    let objectID: String
    let title: String
    let url: String?
    let points: Int
}
