//
//  Image.swift
//  SDWebImageSwiftUIExample
//
//  Created by Hakan Hatipoğlu on 12.03.2024.
//

import Foundation

struct Photo: Codable, Identifiable {
    let id: Int
    let author: String
    let download_url: URL
}
