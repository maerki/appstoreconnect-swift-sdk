//
//  ImageAsset.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// An image asset, including its height, width, and template URL.
public struct ImageAsset: Codable {

    /// string
    public vartemplateUrl: String?

    /// integer
    public varheight: Int?

    /// integer
    public varwidth: Int?
}
