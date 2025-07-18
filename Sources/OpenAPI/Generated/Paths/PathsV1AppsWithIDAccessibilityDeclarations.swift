// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Apps.WithID {
	public var accessibilityDeclarations: AccessibilityDeclarations {
		AccessibilityDeclarations(path: path + "/accessibilityDeclarations")
	}

	public struct AccessibilityDeclarations {
		/// Path: `/v1/apps/{id}/accessibilityDeclarations`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AccessibilityDeclarationsResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "apps_accessibilityDeclarations_getToManyRelated")
		}

		public struct GetParameters {
			public var filterDeviceFamily: [FilterDeviceFamily]?
			public var filterState: [FilterState]?
			public var fieldsAccessibilityDeclarations: [FieldsAccessibilityDeclarations]?
			public var limit: Int?

			public enum FilterDeviceFamily: String, Codable, CaseIterable {
				case iphone = "IPHONE"
				case ipad = "IPAD"
				case appleTv = "APPLE_TV"
				case appleWatch = "APPLE_WATCH"
				case mac = "MAC"
				case vision = "VISION"
			}

			public enum FilterState: String, Codable, CaseIterable {
				case draft = "DRAFT"
				case published = "PUBLISHED"
				case replaced = "REPLACED"
			}

			public enum FieldsAccessibilityDeclarations: String, Codable, CaseIterable {
				case deviceFamily
				case state
				case supportsAudioDescriptions
				case supportsCaptions
				case supportsDarkInterface
				case supportsDifferentiateWithoutColorAlone
				case supportsLargerText
				case supportsReducedMotion
				case supportsSufficientContrast
				case supportsVoiceControl
				case supportsVoiceover
			}

			public init(filterDeviceFamily: [FilterDeviceFamily]? = nil, filterState: [FilterState]? = nil, fieldsAccessibilityDeclarations: [FieldsAccessibilityDeclarations]? = nil, limit: Int? = nil) {
				self.filterDeviceFamily = filterDeviceFamily
				self.filterState = filterState
				self.fieldsAccessibilityDeclarations = fieldsAccessibilityDeclarations
				self.limit = limit
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterDeviceFamily, forKey: "filter[deviceFamily]")
				encoder.encode(filterState, forKey: "filter[state]")
				encoder.encode(fieldsAccessibilityDeclarations, forKey: "fields[accessibilityDeclarations]")
				encoder.encode(limit, forKey: "limit")
				return encoder.items
			}
		}
	}
}
