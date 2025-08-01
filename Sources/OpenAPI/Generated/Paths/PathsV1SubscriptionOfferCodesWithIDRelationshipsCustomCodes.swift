// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.SubscriptionOfferCodes.WithID.Relationships {
	public var customCodes: CustomCodes {
		CustomCodes(path: path + "/customCodes")
	}

	public struct CustomCodes {
		/// Path: `/v1/subscriptionOfferCodes/{id}/relationships/customCodes`
		public let path: String

		public func get(limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.SubscriptionOfferCodeCustomCodesLinkagesResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(limit), id: "subscriptionOfferCodes_customCodes_getToManyRelationship")
		}

		private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}
	}
}
