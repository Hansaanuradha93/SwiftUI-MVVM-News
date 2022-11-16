//
//  NewsEndpoint.swift
//  News App
//
//  Created by Hansa Anuradha on 2022-11-15.
//

import Foundation

protocol APIBuilder {
    var baseUrl: URL { get }
    var path: String { get }
    var urlRequest: URLRequest { get }
}

enum NewsAPI {
    case getNews
}

extension NewsAPI: APIBuilder {
    
    var baseUrl: URL {
        return URL(string: "https://api.lil.software/news")!
    }
    
    var path: String {
        switch self {
        case .getNews:
            return "/news"
        }
    }
    
    var urlRequest: URLRequest {
        return URLRequest(url: self.baseUrl.appendingPathComponent(self.path))
    }
    
}
