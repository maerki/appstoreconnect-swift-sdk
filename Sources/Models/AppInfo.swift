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
        public varappStoreAgeRating: AppStoreAgeRating?

        /// The state of the app.
        public varappStoreState: AppStoreVersionState?

        /// The age rating for Brazil.
        public varbrazilAgeRating: BrazilAgeRating?

        /// The range of ages the app is designed for.
        public varkidsAgeBand: KidsAgeBand?
    }

    public struct Relationships: Codable {
        public varapp: AppInfo.Relationships.App?

        // Not implemented yet
//        public varappInfoLocalizations: AppInfo.Relationships.AppInfoLocalizations?
//        public varprimaryCategory: AppInfo.Relationships.PrimaryCategory?
//        public varprimarySubcategoryOne: AppInfo.Relationships.PrimarySubcategoryOne?
//        public varprimarySubcategoryTwo: AppInfo.Relationships.PrimarySubcategoryTwo?
//        public varsecondaryCategory: AppInfo.Relationships.SecondaryCategory?
//        public varsecondarySubcategoryOne: AppInfo.Relationships.SecondarySubcategoryOne?
//        public varsecondarySubcategoryTwo: AppInfo.Relationships.SecondarySubcategoryTwo?
    }

    /// The resource's attributes.
    public varattributes: AppInfo.Attributes?

    /// The opaque resource ID that uniquely identifies the resource.
    public varid: String

    /// Navigational links to related data and included resource types and IDs.
    public varrelationships: AppInfo.Relationships?

    /// The resource type.Value: apps
    public private(set) var type: String = "appInfos"

//    /// Navigational links that include the self-link.
    public varlinks: ResourceLinks<AppInfo>
}

// MARK: AppInfo.Relationships
extension AppInfo.Relationships {

    public struct App: Codable {

        /// AppInfo.Relationships.App.Data
        public vardata: AppInfo.Relationships.App.Data

         /// AppInfo.Relationships.App.Links
        public varlinks: AppInfo.Relationships.App.Links?
    }
}

// MARK: AppInfo.Relationships.App
extension AppInfo.Relationships.App {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: appStoreVersions
        public private(set) var type: String = "apps"
    }

    public struct Links: Codable {

        /// uri-reference
        public varrelated: URL?

        /// uri-reference
        public var`self`: URL?
    }
}
