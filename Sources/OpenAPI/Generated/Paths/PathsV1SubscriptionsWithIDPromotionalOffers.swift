// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Subscriptions.WithID {
	public var promotionalOffers: PromotionalOffers {
		PromotionalOffers(path: path + "/promotionalOffers")
	}

	public struct PromotionalOffers {
		/// Path: `/v1/subscriptions/{id}/promotionalOffers`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.SubscriptionPromotionalOffersResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "subscriptions_promotionalOffers_getToManyRelated")
		}

		public struct GetParameters {
			public var filterTerritory: [String]?
			public var fieldsSubscriptionPromotionalOffers: [FieldsSubscriptionPromotionalOffers]?
			public var fieldsSubscriptions: [FieldsSubscriptions]?
			public var fieldsSubscriptionPromotionalOfferPrices: [FieldsSubscriptionPromotionalOfferPrices]?
			public var limit: Int?
			public var include: [Include]?
			public var limitPrices: Int?

			public enum FieldsSubscriptionPromotionalOffers: String, Codable, CaseIterable {
				case duration
				case name
				case numberOfPeriods
				case offerCode
				case offerMode
				case subscription
				case prices
			}

			public enum FieldsSubscriptions: String, Codable, CaseIterable {
				case name
				case productID = "productId"
				case familySharable
				case state
				case subscriptionPeriod
				case reviewNote
				case groupLevel
				case subscriptionLocalizations
				case appStoreReviewScreenshot
				case group
				case introductoryOffers
				case promotionalOffers
				case offerCodes
				case prices
				case pricePoints
				case promotedPurchase
				case subscriptionAvailability
				case winBackOffers
				case images
			}

			public enum FieldsSubscriptionPromotionalOfferPrices: String, Codable, CaseIterable {
				case territory
				case subscriptionPricePoint
			}

			public enum Include: String, Codable, CaseIterable {
				case subscription
				case prices
			}

			public init(filterTerritory: [String]? = nil, fieldsSubscriptionPromotionalOffers: [FieldsSubscriptionPromotionalOffers]? = nil, fieldsSubscriptions: [FieldsSubscriptions]? = nil, fieldsSubscriptionPromotionalOfferPrices: [FieldsSubscriptionPromotionalOfferPrices]? = nil, limit: Int? = nil, include: [Include]? = nil, limitPrices: Int? = nil) {
				self.filterTerritory = filterTerritory
				self.fieldsSubscriptionPromotionalOffers = fieldsSubscriptionPromotionalOffers
				self.fieldsSubscriptions = fieldsSubscriptions
				self.fieldsSubscriptionPromotionalOfferPrices = fieldsSubscriptionPromotionalOfferPrices
				self.limit = limit
				self.include = include
				self.limitPrices = limitPrices
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterTerritory, forKey: "filter[territory]")
				encoder.encode(fieldsSubscriptionPromotionalOffers, forKey: "fields[subscriptionPromotionalOffers]")
				encoder.encode(fieldsSubscriptions, forKey: "fields[subscriptions]")
				encoder.encode(fieldsSubscriptionPromotionalOfferPrices, forKey: "fields[subscriptionPromotionalOfferPrices]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				encoder.encode(limitPrices, forKey: "limit[prices]")
				return encoder.items
			}
		}
	}
}
