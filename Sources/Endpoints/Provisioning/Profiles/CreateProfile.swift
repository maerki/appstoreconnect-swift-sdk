//
//  CreateProfile.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Patrick Balestra on 12/24/19.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

extension APIEndpoint where T == ProfileResponse {

    /// Create a new provisioning profile.
    public static func create(
        profileWithId id: String,
        name: String,
        profileType: ProfileType,
        certificateIds: [String] = [],
        deviceIds: [String] = []) -> APIEndpoint {

        let request = ProfileCreateRequest(
            id: id,
            name: name,
            profileType: profileType,
            certificateIds: certificateIds,
            deviceIds: deviceIds
        )

        return APIEndpoint(
            path: "profiles",
            method: .post,
            parameters: nil,
            body: try? JSONEncoder().encode(request))
    }
}
