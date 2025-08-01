// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.BetaFeedbackScreenshotSubmissions {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/betaFeedbackScreenshotSubmissions/{id}`
		public let path: String

		public func get(fieldsBetaFeedbackScreenshotSubmissions: [FieldsBetaFeedbackScreenshotSubmissions]? = nil, include: [Include]? = nil) -> Request<AppStoreConnect_Swift_SDK.BetaFeedbackScreenshotSubmissionResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(fieldsBetaFeedbackScreenshotSubmissions, include), id: "betaFeedbackScreenshotSubmissions_getInstance")
		}

		private func makeGetQuery(_ fieldsBetaFeedbackScreenshotSubmissions: [FieldsBetaFeedbackScreenshotSubmissions]?, _ include: [Include]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder(explode: false)
			encoder.encode(fieldsBetaFeedbackScreenshotSubmissions, forKey: "fields[betaFeedbackScreenshotSubmissions]")
			encoder.encode(include, forKey: "include")
			return encoder.items
		}

		public enum FieldsBetaFeedbackScreenshotSubmissions: String, Codable, CaseIterable {
			case createdDate
			case comment
			case email
			case deviceModel
			case osVersion
			case locale
			case timeZone
			case architecture
			case connectionType
			case pairedAppleWatch
			case appUptimeInMilliseconds
			case diskBytesAvailable
			case diskBytesTotal
			case batteryPercentage
			case screenWidthInPoints
			case screenHeightInPoints
			case appPlatform
			case devicePlatform
			case deviceFamily
			case buildBundleID = "buildBundleId"
			case screenshots
			case build
			case tester
		}

		public enum Include: String, Codable, CaseIterable {
			case build
			case tester
		}

		public var delete: Request<Void> {
			Request(path: path, method: "DELETE", id: "betaFeedbackScreenshotSubmissions_deleteInstance")
		}
	}
}
