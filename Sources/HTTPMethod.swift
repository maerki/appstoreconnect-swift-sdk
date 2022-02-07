//
//  File.swift
//  AppStoreConnect-Swift-SDKPackageDescription
//
//  Created by Michael Schwarz on 22.01.19.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

/// AppStoreConnect relevant HTTP Methods
enum HTTPMethod: String {
    case get = "GET"
    case put = "PUT"
    case post = "POST"
    case delete = "DELETE"
    case patch = "PATCH"
}
