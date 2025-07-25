// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.UserInvitations.WithID.Relationships {
	public var visibleApps: VisibleApps {
		VisibleApps(path: path + "/visibleApps")
	}

	public struct VisibleApps {
		/// Path: `/v1/userInvitations/{id}/relationships/visibleApps`
		public let path: String

		public func get(limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.UserInvitationVisibleAppsLinkagesResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(limit), id: "userInvitations_visibleApps_getToManyRelationship")
		}

		private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}
	}
}
