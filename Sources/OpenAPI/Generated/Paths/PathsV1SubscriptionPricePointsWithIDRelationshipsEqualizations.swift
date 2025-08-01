// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.SubscriptionPricePoints.WithID.Relationships {
	public var equalizations: Equalizations {
		Equalizations(path: path + "/equalizations")
	}

	public struct Equalizations {
		/// Path: `/v1/subscriptionPricePoints/{id}/relationships/equalizations`
		public let path: String

		public func get(limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.SubscriptionPricePointEqualizationsLinkagesResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(limit), id: "subscriptionPricePoints_equalizations_getToManyRelationship")
		}

		private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}
	}
}
