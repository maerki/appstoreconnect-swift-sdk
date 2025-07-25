// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.CiBuildRuns {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/ciBuildRuns/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.CiBuildRunResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "ciBuildRuns_getInstance")
		}

		public struct GetParameters {
			public var fieldsCiBuildRuns: [FieldsCiBuildRuns]?
			public var fieldsBuilds: [FieldsBuilds]?
			public var include: [Include]?
			public var limitBuilds: Int?

			public enum FieldsCiBuildRuns: String, Codable, CaseIterable {
				case number
				case createdDate
				case startedDate
				case finishedDate
				case sourceCommit
				case destinationCommit
				case isPullRequestBuild
				case issueCounts
				case executionProgress
				case completionStatus
				case startReason
				case cancelReason
				case builds
				case workflow
				case product
				case sourceBranchOrTag
				case destinationBranch
				case actions
				case pullRequest
			}

			public enum FieldsBuilds: String, Codable, CaseIterable {
				case version
				case uploadedDate
				case expirationDate
				case expired
				case minOsVersion
				case lsMinimumSystemVersion
				case computedMinMacOsVersion
				case computedMinVisionOsVersion
				case iconAssetToken
				case processingState
				case buildAudienceType
				case usesNonExemptEncryption
				case preReleaseVersion
				case individualTesters
				case betaGroups
				case betaBuildLocalizations
				case appEncryptionDeclaration
				case betaAppReviewSubmission
				case app
				case buildBetaDetail
				case appStoreVersion
				case icons
				case buildBundles
				case perfPowerMetrics
				case diagnosticSignatures
			}

			public enum Include: String, Codable, CaseIterable {
				case builds
				case workflow
				case product
				case sourceBranchOrTag
				case destinationBranch
				case pullRequest
			}

			public init(fieldsCiBuildRuns: [FieldsCiBuildRuns]? = nil, fieldsBuilds: [FieldsBuilds]? = nil, include: [Include]? = nil, limitBuilds: Int? = nil) {
				self.fieldsCiBuildRuns = fieldsCiBuildRuns
				self.fieldsBuilds = fieldsBuilds
				self.include = include
				self.limitBuilds = limitBuilds
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsCiBuildRuns, forKey: "fields[ciBuildRuns]")
				encoder.encode(fieldsBuilds, forKey: "fields[builds]")
				encoder.encode(include, forKey: "include")
				encoder.encode(limitBuilds, forKey: "limit[builds]")
				return encoder.items
			}
		}
	}
}
