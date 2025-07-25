// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterLeaderboardLocalizations.WithID.Relationships {
	public var gameCenterLeaderboardImage: GameCenterLeaderboardImage {
		GameCenterLeaderboardImage(path: path + "/gameCenterLeaderboardImage")
	}

	public struct GameCenterLeaderboardImage {
		/// Path: `/v1/gameCenterLeaderboardLocalizations/{id}/relationships/gameCenterLeaderboardImage`
		public let path: String

		public var get: Request<AppStoreConnect_Swift_SDK.GameCenterLeaderboardLocalizationGameCenterLeaderboardImageLinkageResponse> {
			Request(path: path, method: "GET", id: "gameCenterLeaderboardLocalizations_gameCenterLeaderboardImage_getToOneRelationship")
		}
	}
}
