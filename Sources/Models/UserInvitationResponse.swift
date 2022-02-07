//
//  UserInvitationResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
<<<<<<< HEAD

=======
#if os(Linux)
import FoundationNetworking
#endif
    
>>>>>>> 36fd4f9 (import foundationetworking)
/// A response containing a single resource.
public struct UserInvitationResponse: Codable {

    /// The resource data.
    public let data: UserInvitation

    /// The requested relationship data.
    public let included: [App]?

    /// Navigational links that include the self-link.
    public let links: DocumentLinks
}
