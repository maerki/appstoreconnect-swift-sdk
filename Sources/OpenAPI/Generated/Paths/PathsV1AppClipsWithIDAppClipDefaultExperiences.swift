// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppClips.WithID {
	public var appClipDefaultExperiences: AppClipDefaultExperiences {
		AppClipDefaultExperiences(path: path + "/appClipDefaultExperiences")
	}

	public struct AppClipDefaultExperiences {
		/// Path: `/v1/appClips/{id}/appClipDefaultExperiences`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppClipDefaultExperiencesResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "appClips_appClipDefaultExperiences_getToManyRelated")
		}

		public struct GetParameters {
			public var isExistsReleaseWithAppStoreVersion: Bool?
			public var fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences]?
			public var fieldsAppClips: [FieldsAppClips]?
			public var fieldsAppStoreVersions: [FieldsAppStoreVersions]?
			public var fieldsAppClipDefaultExperienceLocalizations: [FieldsAppClipDefaultExperienceLocalizations]?
			public var fieldsAppClipAppStoreReviewDetails: [FieldsAppClipAppStoreReviewDetails]?
			public var limit: Int?
			public var include: [Include]?
			public var limitAppClipDefaultExperienceLocalizations: Int?

			public enum FieldsAppClipDefaultExperiences: String, Codable, CaseIterable {
				case action
				case appClip
				case releaseWithAppStoreVersion
				case appClipDefaultExperienceLocalizations
				case appClipAppStoreReviewDetail
			}

			public enum FieldsAppClips: String, Codable, CaseIterable {
				case bundleID = "bundleId"
				case app
				case appClipDefaultExperiences
				case appClipAdvancedExperiences
			}

			public enum FieldsAppStoreVersions: String, Codable, CaseIterable {
				case platform
				case versionString
				case appStoreState
				case appVersionState
				case copyright
				case reviewType
				case releaseType
				case earliestReleaseDate
				case usesIdfa
				case downloadable
				case createdDate
				case app
				case ageRatingDeclaration
				case appStoreVersionLocalizations
				case build
				case appStoreVersionPhasedRelease
				case gameCenterAppVersion
				case routingAppCoverage
				case appStoreReviewDetail
				case appStoreVersionSubmission
				case appClipDefaultExperience
				case appStoreVersionExperiments
				case appStoreVersionExperimentsV2
				case customerReviews
				case alternativeDistributionPackage
			}

			public enum FieldsAppClipDefaultExperienceLocalizations: String, Codable, CaseIterable {
				case locale
				case subtitle
				case appClipDefaultExperience
				case appClipHeaderImage
			}

			public enum FieldsAppClipAppStoreReviewDetails: String, Codable, CaseIterable {
				case invocationURLs = "invocationUrls"
				case appClipDefaultExperience
			}

			public enum Include: String, Codable, CaseIterable {
				case appClip
				case releaseWithAppStoreVersion
				case appClipDefaultExperienceLocalizations
				case appClipAppStoreReviewDetail
			}

			public init(isExistsReleaseWithAppStoreVersion: Bool? = nil, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences]? = nil, fieldsAppClips: [FieldsAppClips]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions]? = nil, fieldsAppClipDefaultExperienceLocalizations: [FieldsAppClipDefaultExperienceLocalizations]? = nil, fieldsAppClipAppStoreReviewDetails: [FieldsAppClipAppStoreReviewDetails]? = nil, limit: Int? = nil, include: [Include]? = nil, limitAppClipDefaultExperienceLocalizations: Int? = nil) {
				self.isExistsReleaseWithAppStoreVersion = isExistsReleaseWithAppStoreVersion
				self.fieldsAppClipDefaultExperiences = fieldsAppClipDefaultExperiences
				self.fieldsAppClips = fieldsAppClips
				self.fieldsAppStoreVersions = fieldsAppStoreVersions
				self.fieldsAppClipDefaultExperienceLocalizations = fieldsAppClipDefaultExperienceLocalizations
				self.fieldsAppClipAppStoreReviewDetails = fieldsAppClipAppStoreReviewDetails
				self.limit = limit
				self.include = include
				self.limitAppClipDefaultExperienceLocalizations = limitAppClipDefaultExperienceLocalizations
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(isExistsReleaseWithAppStoreVersion, forKey: "exists[releaseWithAppStoreVersion]")
				encoder.encode(fieldsAppClipDefaultExperiences, forKey: "fields[appClipDefaultExperiences]")
				encoder.encode(fieldsAppClips, forKey: "fields[appClips]")
				encoder.encode(fieldsAppStoreVersions, forKey: "fields[appStoreVersions]")
				encoder.encode(fieldsAppClipDefaultExperienceLocalizations, forKey: "fields[appClipDefaultExperienceLocalizations]")
				encoder.encode(fieldsAppClipAppStoreReviewDetails, forKey: "fields[appClipAppStoreReviewDetails]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				encoder.encode(limitAppClipDefaultExperienceLocalizations, forKey: "limit[appClipDefaultExperienceLocalizations]")
				return encoder.items
			}
		}
	}
}
