// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AppStoreVersionUpdateRequest: Codable {
	public var data: Data

	public struct Data: Codable, Identifiable {
		public var type: `Type`
		public var id: String
		public var attributes: Attributes?
		public var relationships: Relationships?

		public enum `Type`: String, Codable, CaseIterable {
			case appStoreVersions
		}

		public struct Attributes: Codable {
			public var versionString: String?
			public var copyright: String?
			public var reviewType: ReviewType?
			public var releaseType: ReleaseType?
			public var earliestReleaseDate: Date?
			/// - warning: Deprecated.
			public var usesIdfa: Bool?
			public var isDownloadable: Bool?

			public enum ReviewType: String, Codable, CaseIterable {
				case appStore = "APP_STORE"
				case notarization = "NOTARIZATION"
			}

			public enum ReleaseType: String, Codable, CaseIterable {
				case manual = "MANUAL"
				case afterApproval = "AFTER_APPROVAL"
				case scheduled = "SCHEDULED"
			}

			public init(versionString: String? = nil, copyright: String? = nil, reviewType: ReviewType? = nil, releaseType: ReleaseType? = nil, earliestReleaseDate: Date? = nil, usesIdfa: Bool? = nil, isDownloadable: Bool? = nil) {
				self.versionString = versionString
				self.copyright = copyright
				self.reviewType = reviewType
				self.releaseType = releaseType
				self.earliestReleaseDate = earliestReleaseDate
				self.usesIdfa = usesIdfa
				self.isDownloadable = isDownloadable
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.versionString = try values.decodeIfPresent(String.self, forKey: "versionString")
				self.copyright = try values.decodeIfPresent(String.self, forKey: "copyright")
				self.reviewType = try values.decodeIfPresent(ReviewType.self, forKey: "reviewType")
				self.releaseType = try values.decodeIfPresent(ReleaseType.self, forKey: "releaseType")
				self.earliestReleaseDate = try values.decodeIfPresent(Date.self, forKey: "earliestReleaseDate")
				self.usesIdfa = try values.decodeIfPresent(Bool.self, forKey: "usesIdfa")
				self.isDownloadable = try values.decodeIfPresent(Bool.self, forKey: "downloadable")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(versionString, forKey: "versionString")
				try values.encodeIfPresent(copyright, forKey: "copyright")
				try values.encodeIfPresent(reviewType, forKey: "reviewType")
				try values.encodeIfPresent(releaseType, forKey: "releaseType")
				try values.encodeIfPresent(earliestReleaseDate, forKey: "earliestReleaseDate")
				try values.encodeIfPresent(usesIdfa, forKey: "usesIdfa")
				try values.encodeIfPresent(isDownloadable, forKey: "downloadable")
			}
		}

		public struct Relationships: Codable {
			public var build: Build?
			public var appClipDefaultExperience: AppClipDefaultExperience?

			public struct Build: Codable {
				public var data: Data?

				public struct Data: Codable, Identifiable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case builds
					}

					public init(type: `Type`, id: String) {
						self.type = type
						self.id = id
					}

					public init(from decoder: Decoder) throws {
						let values = try decoder.container(keyedBy: StringCodingKey.self)
						self.type = try values.decode(`Type`.self, forKey: "type")
						self.id = try values.decode(String.self, forKey: "id")
					}

					public func encode(to encoder: Encoder) throws {
						var values = encoder.container(keyedBy: StringCodingKey.self)
						try values.encode(type, forKey: "type")
						try values.encode(id, forKey: "id")
					}
				}

				public init(data: Data? = nil) {
					self.data = data
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.data = try values.decodeIfPresent(Data.self, forKey: "data")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(data, forKey: "data")
				}
			}

			public struct AppClipDefaultExperience: Codable {
				public var data: Data?

				public struct Data: Codable, Identifiable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case appClipDefaultExperiences
					}

					public init(type: `Type`, id: String) {
						self.type = type
						self.id = id
					}

					public init(from decoder: Decoder) throws {
						let values = try decoder.container(keyedBy: StringCodingKey.self)
						self.type = try values.decode(`Type`.self, forKey: "type")
						self.id = try values.decode(String.self, forKey: "id")
					}

					public func encode(to encoder: Encoder) throws {
						var values = encoder.container(keyedBy: StringCodingKey.self)
						try values.encode(type, forKey: "type")
						try values.encode(id, forKey: "id")
					}
				}

				public init(data: Data? = nil) {
					self.data = data
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.data = try values.decodeIfPresent(Data.self, forKey: "data")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(data, forKey: "data")
				}
			}

			public init(build: Build? = nil, appClipDefaultExperience: AppClipDefaultExperience? = nil) {
				self.build = build
				self.appClipDefaultExperience = appClipDefaultExperience
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.build = try values.decodeIfPresent(Build.self, forKey: "build")
				self.appClipDefaultExperience = try values.decodeIfPresent(AppClipDefaultExperience.self, forKey: "appClipDefaultExperience")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(build, forKey: "build")
				try values.encodeIfPresent(appClipDefaultExperience, forKey: "appClipDefaultExperience")
			}
		}

		public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil) {
			self.type = type
			self.id = id
			self.attributes = attributes
			self.relationships = relationships
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.type = try values.decode(`Type`.self, forKey: "type")
			self.id = try values.decode(String.self, forKey: "id")
			self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
			self.relationships = try values.decodeIfPresent(Relationships.self, forKey: "relationships")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encode(type, forKey: "type")
			try values.encode(id, forKey: "id")
			try values.encodeIfPresent(attributes, forKey: "attributes")
			try values.encodeIfPresent(relationships, forKey: "relationships")
		}
	}

	public init(data: Data) {
		self.data = data
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.data = try values.decode(Data.self, forKey: "data")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(data, forKey: "data")
	}
}
