//
//  AppEncryptionDeclaration.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

/// The data structure that represents the resource.
public struct AppEncryptionDeclaration: Codable {

    /// Attributes that describe a resource.
    public struct Attributes: Codable {

        /// A Boolean value that indicates the intent to distribute your app on the French App Store.
        public var availableOnFrenchStore: Bool?

        /// A unique identifier that can be added to your app to associate it with a given declaration.
        public var codeValue: String?

        /// A Boolean value that indicates your app implements any proprietary encryption algorithms.
        public var containsProprietaryCryptography: Bool?

        /// A Boolean value that indicates your app implements any standard encryption algorithms instead of, or in addition to, using or accessing the encryption in Apple’s operating systems.
        public var containsThirdPartyCryptography: Bool?

        /// The document name of your submitted export compliance documentation.
        public var documentName: String?

        /// The file type of your submitted export compliance documentation.
        public var documentType: String?

        /// The URL to the file of your submitted export compliance documentation.
        public var documentUrl: String?

        /// A Boolean value that indicates your app is exempt based on your use of encryption and the app's availability.
        public var exempt: Bool?

        /// The platform of the declaration.
        public var platform: Platform?

        /// A Boolean value that indicates whether your app uses, contains, or incorporates cryptography.
        public var usesEncryption: Bool?

        /// The approval state of your export compliance documentation.
        public var appEncryptionDeclarationState: AppEncryptionDeclarationState?

        /// The date and time you submitted your declaration.
        public var uploadedDate: Date?
    }

    public struct Relationships: Codable {

        /// AppEncryptionDeclaration.Relationships.App
        public var app: AppEncryptionDeclaration.Relationships.App?

        /// AppEncryptionDeclaration.Relationships.Builds
        public var builds: AppEncryptionDeclaration.Relationships.Builds?
    }

    /// The resource's attributes.
    public var attributes: AppEncryptionDeclaration.Attributes?

    /// The opaque resource ID that uniquely identifies the resource.
    public var `id`: String

    /// Navigational links to related data and included resource types and IDs.
    public var relationships: AppEncryptionDeclaration.Relationships?

    /// The resource type.Value: appEncryptionDeclarations
    public private(set) var type: String = "appEncryptionDeclarations"

    /// Navigational links that include the self-link.
    public var links: ResourceLinks<AppEncryptionDeclarationResponse>
}

// MARK: AppEncryptionDeclaration.Relationships
extension AppEncryptionDeclaration.Relationships {

    public struct App: Codable {

        /// AppEncryptionDeclaration.Relationships.App.Data
        public var data: AppEncryptionDeclaration.Relationships.App.Data?

        /// AppEncryptionDeclaration.Relationships.App.Links
        public var links: AppEncryptionDeclaration.Relationships.App.Links?
    }

    public struct Builds: Codable {

        /// [AppEncryptionDeclaration.Relationships.Builds.Data]
        public var data: [AppEncryptionDeclaration.Relationships.Builds.Data]?

        /// AppEncryptionDeclaration.Relationships.Builds.Links
        public var links: AppEncryptionDeclaration.Relationships.Builds.Links?

        /// PagingInformation
        public var meta: PagingInformation?
    }
}

// MARK: AppEncryptionDeclaration.Relationships.App
extension AppEncryptionDeclaration.Relationships.App {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var `id`: String

        /// The resource type.Value: apps
        public private(set) var type: String = "apps"
    }

    public struct Links: Codable {

        /// uri-reference
        public var related: URL?

        /// uri-reference
        public var `self`: URL?
    }
}

// MARK: AppEncryptionDeclaration.Relationships.Builds
extension AppEncryptionDeclaration.Relationships.Builds {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var `id`: String

        /// The resource type.Value: builds
        public private(set) var type: String = "builds"
    }

    public struct Links: Codable {

        /// uri-reference
        public var related: URL?

        /// uri-reference
        public var `self`: URL?
    }
}
