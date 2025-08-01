// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppInfos {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/appInfos/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppInfoResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "appInfos_getInstance")
		}

		public struct GetParameters {
			public var fieldsAppInfos: [FieldsAppInfos]?
			public var fieldsAgeRatingDeclarations: [FieldsAgeRatingDeclarations]?
			public var fieldsAppInfoLocalizations: [FieldsAppInfoLocalizations]?
			public var fieldsAppCategories: [FieldsAppCategories]?
			public var include: [Include]?
			public var limitAppInfoLocalizations: Int?

			public enum FieldsAppInfos: String, Codable, CaseIterable {
				case appStoreState
				case state
				case appStoreAgeRating
				case australiaAgeRating
				case brazilAgeRating
				case brazilAgeRatingV2
				case franceAgeRating
				case koreaAgeRating
				case kidsAgeBand
				case app
				case ageRatingDeclaration
				case appInfoLocalizations
				case primaryCategory
				case primarySubcategoryOne
				case primarySubcategoryTwo
				case secondaryCategory
				case secondarySubcategoryOne
				case secondarySubcategoryTwo
			}

			public enum FieldsAgeRatingDeclarations: String, Codable, CaseIterable {
				case alcoholTobaccoOrDrugUseOrReferences
				case contests
				case gambling
				case gamblingSimulated
				case kidsAgeBand
				case lootBox
				case medicalOrTreatmentInformation
				case profanityOrCrudeHumor
				case sexualContentGraphicAndNudity
				case sexualContentOrNudity
				case horrorOrFearThemes
				case matureOrSuggestiveThemes
				case unrestrictedWebAccess
				case violenceCartoonOrFantasy
				case violenceRealisticProlongedGraphicOrSadistic
				case violenceRealistic
				case ageRatingOverride
				case koreaAgeRatingOverride
			}

			public enum FieldsAppInfoLocalizations: String, Codable, CaseIterable {
				case locale
				case name
				case subtitle
				case privacyPolicyURL = "privacyPolicyUrl"
				case privacyChoicesURL = "privacyChoicesUrl"
				case privacyPolicyText
				case appInfo
			}

			public enum FieldsAppCategories: String, Codable, CaseIterable {
				case platforms
				case subcategories
				case parent
			}

			public enum Include: String, Codable, CaseIterable {
				case app
				case ageRatingDeclaration
				case appInfoLocalizations
				case primaryCategory
				case primarySubcategoryOne
				case primarySubcategoryTwo
				case secondaryCategory
				case secondarySubcategoryOne
				case secondarySubcategoryTwo
			}

			public init(fieldsAppInfos: [FieldsAppInfos]? = nil, fieldsAgeRatingDeclarations: [FieldsAgeRatingDeclarations]? = nil, fieldsAppInfoLocalizations: [FieldsAppInfoLocalizations]? = nil, fieldsAppCategories: [FieldsAppCategories]? = nil, include: [Include]? = nil, limitAppInfoLocalizations: Int? = nil) {
				self.fieldsAppInfos = fieldsAppInfos
				self.fieldsAgeRatingDeclarations = fieldsAgeRatingDeclarations
				self.fieldsAppInfoLocalizations = fieldsAppInfoLocalizations
				self.fieldsAppCategories = fieldsAppCategories
				self.include = include
				self.limitAppInfoLocalizations = limitAppInfoLocalizations
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAppInfos, forKey: "fields[appInfos]")
				encoder.encode(fieldsAgeRatingDeclarations, forKey: "fields[ageRatingDeclarations]")
				encoder.encode(fieldsAppInfoLocalizations, forKey: "fields[appInfoLocalizations]")
				encoder.encode(fieldsAppCategories, forKey: "fields[appCategories]")
				encoder.encode(include, forKey: "include")
				encoder.encode(limitAppInfoLocalizations, forKey: "limit[appInfoLocalizations]")
				return encoder.items
			}
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.AppInfoUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.AppInfoResponse> {
			Request(path: path, method: "PATCH", body: body, id: "appInfos_updateInstance")
		}
	}
}
