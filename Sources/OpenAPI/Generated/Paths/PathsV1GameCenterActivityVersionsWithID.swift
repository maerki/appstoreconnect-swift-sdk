// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterActivityVersions {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/gameCenterActivityVersions/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.GameCenterActivityVersionResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "gameCenterActivityVersions_getInstance")
		}

		public struct GetParameters {
			public var fieldsGameCenterActivityVersions: [FieldsGameCenterActivityVersions]?
			public var fieldsGameCenterActivityLocalizations: [FieldsGameCenterActivityLocalizations]?
			public var fieldsGameCenterActivityImages: [FieldsGameCenterActivityImages]?
			public var include: [Include]?
			public var limitLocalizations: Int?
			public var limitReleases: Int?

			public enum FieldsGameCenterActivityVersions: String, Codable, CaseIterable {
				case version
				case state
				case fallbackURL = "fallbackUrl"
				case activity
				case localizations
				case defaultImage
				case releases
			}

			public enum FieldsGameCenterActivityLocalizations: String, Codable, CaseIterable {
				case locale
				case name
				case description
				case version
				case image
			}

			public enum FieldsGameCenterActivityImages: String, Codable, CaseIterable {
				case fileSize
				case fileName
				case imageAsset
				case uploadOperations
				case assetDeliveryState
			}

			public enum Include: String, Codable, CaseIterable {
				case activity
				case localizations
				case defaultImage
				case releases
			}

			public init(fieldsGameCenterActivityVersions: [FieldsGameCenterActivityVersions]? = nil, fieldsGameCenterActivityLocalizations: [FieldsGameCenterActivityLocalizations]? = nil, fieldsGameCenterActivityImages: [FieldsGameCenterActivityImages]? = nil, include: [Include]? = nil, limitLocalizations: Int? = nil, limitReleases: Int? = nil) {
				self.fieldsGameCenterActivityVersions = fieldsGameCenterActivityVersions
				self.fieldsGameCenterActivityLocalizations = fieldsGameCenterActivityLocalizations
				self.fieldsGameCenterActivityImages = fieldsGameCenterActivityImages
				self.include = include
				self.limitLocalizations = limitLocalizations
				self.limitReleases = limitReleases
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsGameCenterActivityVersions, forKey: "fields[gameCenterActivityVersions]")
				encoder.encode(fieldsGameCenterActivityLocalizations, forKey: "fields[gameCenterActivityLocalizations]")
				encoder.encode(fieldsGameCenterActivityImages, forKey: "fields[gameCenterActivityImages]")
				encoder.encode(include, forKey: "include")
				encoder.encode(limitLocalizations, forKey: "limit[localizations]")
				encoder.encode(limitReleases, forKey: "limit[releases]")
				return encoder.items
			}
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.GameCenterActivityVersionUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.GameCenterActivityVersionResponse> {
			Request(path: path, method: "PATCH", body: body, id: "gameCenterActivityVersions_updateInstance")
		}
	}
}
