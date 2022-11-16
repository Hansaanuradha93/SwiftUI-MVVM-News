//
//  NewsResponse.swift
//  News App
//
//  Created by Hansa Anuradha on 2022-11-15.
//

import Foundation

// MARK: - NewsResponse
struct NewsResponse: Codable {
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable, Identifiable {
    let id = UUID()
    let author: String?
    let url: String?
    let source, title: String?
    let articleDescription: String?
    let image: String?
    let date: Date?

    enum CodingKeys: String, CodingKey {
        case author, url, source, title
        case articleDescription = "description"
        case image, date
    }
}

// MARK: Dummy Data
extension Article {
    
    static let dummyData = Article(author: nil,
                                   url: "https://www.techradar.com/news/live/where-to-buy-nvidia-geforce-rtx-4080",
                                   source: "TechRadar",
                                   title: "Where to buy Nvidia GeForce RTX 4080: stock updates as they happen - TechRadar",
                                   articleDescription: "We help you pick up Nvidia's latest GPU",
                                   image: "https://cdn.mos.cms.futurecdn.net/odB2UriTqehjVBto5R8Pzj-1200-80.jpg",
                                   date: Date())
}
