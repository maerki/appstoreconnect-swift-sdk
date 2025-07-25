// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct GameCenterActivityLocalizationResponse: Codable {
	/// GameCenterActivityLocalization
	public var data: GameCenterActivityLocalization
	public var included: [IncludedItem]?
	public var links: DocumentLinks

	public enum IncludedItem: Codable {
		case gameCenterActivityVersion(GameCenterActivityVersion)
		case gameCenterActivityImage(GameCenterActivityImage)

		public init(from decoder: Decoder) throws {
			let container = try decoder.singleValueContainer()
			if let value = try? container.decode(GameCenterActivityVersion.self) {
				self = .gameCenterActivityVersion(value)
			} else if let value = try? container.decode(GameCenterActivityImage.self) {
				self = .gameCenterActivityImage(value)
			} else {
				throw DecodingError.dataCorruptedError(
					in: container,
					debugDescription: "Data could not be decoded as any of the expected types (GameCenterActivityVersion, GameCenterActivityImage)."
				)
			}
		}

		public func encode(to encoder: Encoder) throws {
			var container = encoder.singleValueContainer()
			switch self {
			case .gameCenterActivityVersion(let value): try container.encode(value)
			case .gameCenterActivityImage(let value): try container.encode(value)
			}
		}
	}

	public init(data: GameCenterActivityLocalization, included: [IncludedItem]? = nil, links: DocumentLinks) {
		self.data = data
		self.included = included
		self.links = links
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.data = try values.decode(GameCenterActivityLocalization.self, forKey: "data")
		self.included = try values.decodeIfPresent([IncludedItem].self, forKey: "included")
		self.links = try values.decode(DocumentLinks.self, forKey: "links")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(data, forKey: "data")
		try values.encodeIfPresent(included, forKey: "included")
		try values.encode(links, forKey: "links")
	}
}
