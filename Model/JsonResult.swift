//
//  JsonResult.swift
//  Musiast
//
//  Created by Nitin Singh Manhas on 11/04/24.
//



// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let jSONResult = try? JSONDecoder().decode(JSONResult.self, from: jsonData)

import Foundation

// MARK: - JSONResult
struct JSONResult: Codable {
    let resultCount: Int
    let results: [Result]
}

// MARK: - Result
struct Result: Codable {
    let wrapperType: WrapperType
    let artistType: String?
    let artistName: String
    let artistLinkURL: String?
    let artistID: Int
    let amgArtistID: Int?
    let primaryGenreName: String
    let primaryGenreID: Int?
    let collectionType: CollectionType?
    let collectionID: Int?
    let collectionName, collectionCensoredName: String?
    let artistViewURL, collectionViewURL: String?
    let artworkUrl60, artworkUrl100: String?
    let collectionPrice: Double?
    let collectionExplicitness: CollectionExplicitness?
    let trackCount: Int?
    let copyright: String?
    let country: Country?
    let currency: Currency?
    let releaseDate: String?
    let contentAdvisoryRating: String?

    enum CodingKeys: String, CodingKey {
        case wrapperType, artistType, artistName
        case artistLinkURL = "artistLinkUrl"
        case artistID = "artistId"
        case amgArtistID = "amgArtistId"
        case primaryGenreName
        case primaryGenreID = "primaryGenreId"
        case collectionType
        case collectionID = "collectionId"
        case collectionName, collectionCensoredName
        case artistViewURL = "artistViewUrl"
        case collectionViewURL = "collectionViewUrl"
        case artworkUrl60, artworkUrl100, collectionPrice, collectionExplicitness, trackCount, copyright, country, currency, releaseDate, contentAdvisoryRating
    }
}

enum CollectionExplicitness: String, Codable {
    case explicit = "explicit"
    case notExplicit = "notExplicit"
}

enum CollectionType: String, Codable {
    case album = "Album"
}

enum Country: String, Codable {
    case usa = "USA"
}

enum Currency: String, Codable {
    case usd = "USD"
}

enum WrapperType: String, Codable {
    case artist = "artist"
    case collection = "collection"
}
