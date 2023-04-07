//
//  VideoModel.swift
//  Africa
//
//  Created by Mark Trance on 4/7/23.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String {
        "video-\(id)"
    }
}
