// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterActivities.WithID.Relationships {
	public var leaderboards: Leaderboards {
		Leaderboards(path: path + "/leaderboards")
	}

	public struct Leaderboards {
		/// Path: `/v1/gameCenterActivities/{id}/relationships/leaderboards`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.GameCenterActivityLeaderboardsLinkagesRequest) -> Request<Void> {
			Request(path: path, method: "POST", body: body, id: "gameCenterActivities_leaderboards_createToManyRelationship")
		}

		public func delete(_ body: AppStoreConnect_Swift_SDK.GameCenterActivityLeaderboardsLinkagesRequest) -> Request<Void> {
			Request(path: path, method: "DELETE", body: body, id: "gameCenterActivities_leaderboards_deleteToManyRelationship")
		}
	}
}
