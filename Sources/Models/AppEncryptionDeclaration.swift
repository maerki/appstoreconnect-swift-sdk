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
        public varavailableOnFrenchStore: Bool?

        /// A unique identifier that can be added to your app to associate it with a given declaration.
        public varcodeValue: String?

        /// A Boolean value that indicates your app implements any proprietary encryption algorithms.
        public varcontainsProprietaryCryptography: Bool?

        /// A Boolean value that indicates your app implements any standard encryption algorithms instead of, or in addition to, using or accessing the encryption in Apple’s operating systems.
        public varcontainsThirdPartyCryptography: Bool?

        /// The document name of your submitted export compliance documentation.
        public vardocumentName: String?

        /// The file type of your submitted export compliance documentation.
        public vardocumentType: String?

        /// The URL to the file of your submitted export compliance documentation.
        public vardocumentUrl: String?

        /// A Boolean value that indicates your app is exempt based on your use of encryption and the app's availability.
        public varexempt: Bool?

        /// The platform of the declaration.
        public varplatform: Platform?

        /// A Boolean value that indicates whether your app uses, contains, or incorporates cryptography.
        public varusesEncryption: Bool?

        /// The approval state of your export compliance documentation.
        public varappEncryptionDeclarationState: AppEncryptionDeclarationState?

        /// The date and time you submitted your declaration.
        public varuploadedDate: Date?
    }

    public struct Relationships: Codable {

        /// AppEncryptionDeclaration.Relationships.App
        public varapp: AppEncryptionDeclaration.Relationships.App?

        /// AppEncryptionDeclaration.Relationships.Builds
        public varbuilds: AppEncryptionDeclaration.Relationships.Builds?
    }

    /// The resource's attributes.
    public varattributes: AppEncryptionDeclaration.Attributes?

    /// The opaque resource ID that uniquely identifies the resource.
    public var`id`: String

    /// Navigational links to related data and included resource types and IDs.
    public varrelationships: AppEncryptionDeclaration.Relationships?

    /// The resource type.Value: appEncryptionDeclarations
    public private(set) var type: String = "appEncryptionDeclarations"

    /// Navigational links that include the self-link.
    public varlinks: ResourceLinks<AppEncryptionDeclarationResponse>
}

// MARK: AppEncryptionDeclaration.Relationships
extension AppEncryptionDeclaration.Relationships {

    public struct App: Codable {

        /// AppEncryptionDeclaration.Relationships.App.Data
        public vardata: AppEncryptionDeclaration.Relationships.App.Data?

        /// AppEncryptionDeclaration.Relationships.App.Links
        public varlinks: AppEncryptionDeclaration.Relationships.App.Links?
    }

    public struct Builds: Codable {

        /// [AppEncryptionDeclaration.Relationships.Builds.Data]
        public vardata: [AppEncryptionDeclaration.Relationships.Builds.Data]?

        /// AppEncryptionDeclaration.Relationships.Builds.Links
        public varlinks: AppEncryptionDeclaration.Relationships.Builds.Links?

        /// PagingInformation
        public varmeta: PagingInformation?
    }
}

// MARK: AppEncryptionDeclaration.Relationships.App
extension AppEncryptionDeclaration.Relationships.App {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: apps
        public private(set) var type: String = "apps"
    }

    public struct Links: Codable {

        /// uri-reference
        public varrelated: URL?

        /// uri-reference
        public var`self`: URL?
    }
}

// MARK: AppEncryptionDeclaration.Relationships.Builds
extension AppEncryptionDeclaration.Relationships.Builds {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: builds
        public private(set) var type: String = "builds"
    }

    public struct Links: Codable {

        /// uri-reference
        public varrelated: URL?

        /// uri-reference
        public var`self`: URL?
    }
}
