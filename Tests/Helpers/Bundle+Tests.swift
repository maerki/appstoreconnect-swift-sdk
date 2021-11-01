//
//  Bundle+Tests.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Oliver Jones on 17/4/20.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

extension Bundle {
    static let tests = Bundle(for: BundleTag.self)
}

private final class BundleTag {}
