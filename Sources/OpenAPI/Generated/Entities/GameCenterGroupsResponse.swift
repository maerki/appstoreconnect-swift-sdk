// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct GameCenterGroupsResponse: Codable {
	public var data: [GameCenterGroup]
	public var included: [IncludedItem]?
	public var links: PagedDocumentLinks
	public var meta: PagingInformation?

	public enum IncludedItem: Codable {
		case gameCenterDetail(GameCenterDetail)
		case gameCenterLeaderboard(GameCenterLeaderboard)
		case gameCenterLeaderboardSet(GameCenterLeaderboardSet)
		case gameCenterAchievement(GameCenterAchievement)
		case gameCenterActivity(GameCenterActivity)
		case gameCenterChallenge(GameCenterChallenge)

		public init(from decoder: Decoder) throws {
			let container = try decoder.singleValueContainer()
			if let value = try? container.decode(GameCenterDetail.self) {
				self = .gameCenterDetail(value)
			} else if let value = try? container.decode(GameCenterLeaderboard.self) {
				self = .gameCenterLeaderboard(value)
			} else if let value = try? container.decode(GameCenterLeaderboardSet.self) {
				self = .gameCenterLeaderboardSet(value)
			} else if let value = try? container.decode(GameCenterAchievement.self) {
				self = .gameCenterAchievement(value)
			} else if let value = try? container.decode(GameCenterActivity.self) {
				self = .gameCenterActivity(value)
			} else if let value = try? container.decode(GameCenterChallenge.self) {
				self = .gameCenterChallenge(value)
			} else {
				throw DecodingError.dataCorruptedError(
					in: container,
					debugDescription: "Data could not be decoded as any of the expected types (GameCenterDetail, GameCenterLeaderboard, GameCenterLeaderboardSet, GameCenterAchievement, GameCenterActivity, GameCenterChallenge)."
				)
			}
		}

		public func encode(to encoder: Encoder) throws {
			var container = encoder.singleValueContainer()
			switch self {
			case .gameCenterDetail(let value): try container.encode(value)
			case .gameCenterLeaderboard(let value): try container.encode(value)
			case .gameCenterLeaderboardSet(let value): try container.encode(value)
			case .gameCenterAchievement(let value): try container.encode(value)
			case .gameCenterActivity(let value): try container.encode(value)
			case .gameCenterChallenge(let value): try container.encode(value)
			}
		}
	}

	public init(data: [GameCenterGroup], included: [IncludedItem]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
		self.data = data
		self.included = included
		self.links = links
		self.meta = meta
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.data = try values.decode([GameCenterGroup].self, forKey: "data")
		self.included = try values.decodeIfPresent([IncludedItem].self, forKey: "included")
		self.links = try values.decode(PagedDocumentLinks.self, forKey: "links")
		self.meta = try values.decodeIfPresent(PagingInformation.self, forKey: "meta")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(data, forKey: "data")
		try values.encodeIfPresent(included, forKey: "included")
		try values.encode(links, forKey: "links")
		try values.encodeIfPresent(meta, forKey: "meta")
	}
}
