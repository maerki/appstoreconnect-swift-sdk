// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Apps.WithID.Relationships {
	public var subscriptionGroups: SubscriptionGroups {
		SubscriptionGroups(path: path + "/subscriptionGroups")
	}

	public struct SubscriptionGroups {
		/// Path: `/v1/apps/{id}/relationships/subscriptionGroups`
		public let path: String

		public func get(limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.AppSubscriptionGroupsLinkagesResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(limit), id: "apps_subscriptionGroups_getToManyRelationship")
		}

		private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}
	}
}
