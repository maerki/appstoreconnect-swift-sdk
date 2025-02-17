// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Subscriptions.WithID {
	public var subscriptionAvailability: SubscriptionAvailability {
		SubscriptionAvailability(path: path + "/subscriptionAvailability")
	}

	public struct SubscriptionAvailability {
		/// Path: `/v1/subscriptions/{id}/subscriptionAvailability`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.SubscriptionAvailabilityResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsSubscriptionAvailabilities: [FieldsSubscriptionAvailabilities]?
			public var fieldsSubscriptions: [FieldsSubscriptions]?
			public var fieldsTerritories: [FieldsTerritories]?
			public var limitAvailableTerritories: Int?
			public var include: [Include]?

			public enum FieldsSubscriptionAvailabilities: String, Codable, CaseIterable {
				case availableInNewTerritories
				case availableTerritories
				case subscription
			}

			public enum FieldsSubscriptions: String, Codable, CaseIterable {
				case appStoreReviewScreenshot
				case availableInAllTerritories
				case familySharable
				case group
				case groupLevel
				case introductoryOffers
				case name
				case offerCodes
				case pricePoints
				case prices
				case productID = "productId"
				case promotedPurchase
				case promotionalOffers
				case reviewNote
				case state
				case subscriptionAvailability
				case subscriptionLocalizations
				case subscriptionPeriod
			}

			public enum FieldsTerritories: String, Codable, CaseIterable {
				case currency
			}

			public enum Include: String, Codable, CaseIterable {
				case availableTerritories
				case subscription
			}

			public init(fieldsSubscriptionAvailabilities: [FieldsSubscriptionAvailabilities]? = nil, fieldsSubscriptions: [FieldsSubscriptions]? = nil, fieldsTerritories: [FieldsTerritories]? = nil, limitAvailableTerritories: Int? = nil, include: [Include]? = nil) {
				self.fieldsSubscriptionAvailabilities = fieldsSubscriptionAvailabilities
				self.fieldsSubscriptions = fieldsSubscriptions
				self.fieldsTerritories = fieldsTerritories
				self.limitAvailableTerritories = limitAvailableTerritories
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsSubscriptionAvailabilities, forKey: "fields[subscriptionAvailabilities]")
				encoder.encode(fieldsSubscriptions, forKey: "fields[subscriptions]")
				encoder.encode(fieldsTerritories, forKey: "fields[territories]")
				encoder.encode(limitAvailableTerritories, forKey: "limit[availableTerritories]")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
