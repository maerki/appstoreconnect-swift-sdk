//
//  BetaLicenseAgreementResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// A response containing a single resource.
public struct BetaLicenseAgreementResponse: Codable {

    /// The resource data.
    public var data: BetaLicenseAgreement

    /// The requested relationship data.
    public var included: [App]?

    /// Navigational links that include the self-link.
    public var links: DocumentLinks
}
