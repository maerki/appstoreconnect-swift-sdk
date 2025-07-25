// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterLeaderboardSets.WithID.Relationships {
	public var releases: Releases {
		Releases(path: path + "/releases")
	}

	public struct Releases {
		/// Path: `/v1/gameCenterLeaderboardSets/{id}/relationships/releases`
		public let path: String

		public func get(limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.GameCenterLeaderboardSetReleasesLinkagesResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(limit), id: "gameCenterLeaderboardSets_releases_getToManyRelationship")
		}

		private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}
	}
}
