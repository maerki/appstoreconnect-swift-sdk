//
//  AppInfo.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Morten Bjerg Gregersen on 23/08/2020.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

/// The data structure that represents the resource.
public struct AppInfo: Codable {
    /// Attributes that describe a resource.
    public struct Attributes: Codable {

        /// The age rating.
        public var appStoreAgeRating: AppStoreAgeRating?

        /// The state of the app.
        public var appStoreState: AppStoreVersionState?

        /// The age rating for Brazil.
        public var brazilAgeRating: BrazilAgeRating?

        /// The range of ages the app is designed for.
        public var kidsAgeBand: KidsAgeBand?
    }

    public struct Relationships: Codable {
        public var app: AppInfo.Relationships.App?

        // Not implemented yet
//        public var appInfoLocalizations: AppInfo.Relationships.AppInfoLocalizations?
//        public var primaryCategory: AppInfo.Relationships.PrimaryCategory?
//        public var primarySubcategoryOne: AppInfo.Relationships.PrimarySubcategoryOne?
//        public var primarySubcategoryTwo: AppInfo.Relationships.PrimarySubcategoryTwo?
//        public var secondaryCategory: AppInfo.Relationships.SecondaryCategory?
//        public var secondarySubcategoryOne: AppInfo.Relationships.SecondarySubcategoryOne?
//        public var secondarySubcategoryTwo: AppInfo.Relationships.SecondarySubcategoryTwo?
    }

    /// The resource's attributes.
    public var attributes: AppInfo.Attributes?

    /// The opaque resource ID that uniquely identifies the resource.
    public var id: String

    /// Navigational links to related data and included resource types and IDs.
    public var relationships: AppInfo.Relationships?

    /// The resource type.Value: apps
    public private(set) var type: String = "appInfos"

//    /// Navigational links that include the self-link.
    public var links: ResourceLinks<AppInfo>
}

// MARK: AppInfo.Relationships
extension AppInfo.Relationships {

    public struct App: Codable {

        /// AppInfo.Relationships.App.Data
        public var data: AppInfo.Relationships.App.Data

         /// AppInfo.Relationships.App.Links
        public var links: AppInfo.Relationships.App.Links?
    }
}

// MARK: AppInfo.Relationships.App
extension AppInfo.Relationships.App {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var `id`: String

        /// The resource type.Value: appStoreVersions
        public private(set) var type: String = "apps"
    }

    public struct Links: Codable {

        /// uri-reference
        public var related: URL?

        /// uri-reference
        public var `self`: URL?
    }
}
