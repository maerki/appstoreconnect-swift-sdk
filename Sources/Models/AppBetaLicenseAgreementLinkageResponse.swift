//
//  AppBetaLicenseAgreementLinkageResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
    
/// A response containing the ID of the related resource.
public struct AppBetaLicenseAgreementLinkageResponse: Codable {
    
    public struct Data: Codable {
    
        /// The opaque resource ID that uniquely identifies the resource.
        public let `id`: String
    
        /// The resource type.Value: betaLicenseAgreements
        public let type: String = "betaLicenseAgreements"
    }
    
    /// The object types and IDs of the related resources.
    public let data: AppBetaLicenseAgreementLinkageResponse.Data

    /// Navigational links including the self-link and links to the related data.
    public let links: DocumentLinks
    
}
