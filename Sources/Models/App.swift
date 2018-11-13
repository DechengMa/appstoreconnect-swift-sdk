//
//  App.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
    
/// The data structure that represents the resource.
struct App: Decodable {

    /// The resource's attributes.
    let attributes: App.Attributes?

    /// (Required) The opaque resource ID that uniquely identifies the resource.
    let `id`: String

    /// Navigational links to related data and included resource types and IDs.
    let relationships: App.Relationships?

    /// (Required) The resource type.Value: apps
    let type: String

    /// (Required) Navigational links that include the self-link.
    let links: ResourceLinks

    /// Attributes that describe a resource.
    struct Attributes: Decodable {
    
        /// The bundle ID for your app. This ID must match the one you use in Xcode. The bundle ID cannot be changed after you upload your first build.
        let bundleId: String?
    
        /// The name of your app as it will appear in the App Store. The maximum length is 30 characters.
        let name: String?
    
        /// The primary locale for your app. If localized app information isn’t available in an App Store territory, the information from your primary language is used instead.
        let primaryLocale: String?
    
        /// A unique ID for your app that is not visible on the App Store.
        let sku: String?
    }
    
    struct Relationships: Decodable {
    
        /// App.Relationships.BetaLicenseAgreement
        let betaLicenseAgreement: App.Relationships.BetaLicenseAgreement?
    
        /// App.Relationships.PreReleaseVersions
        let preReleaseVersions: App.Relationships.PreReleaseVersions?
    
        /// App.Relationships.BetaAppLocalizations
        let betaAppLocalizations: App.Relationships.BetaAppLocalizations?
    
        /// App.Relationships.BetaGroups
        let betaGroups: App.Relationships.BetaGroups?
    
        /// App.Relationships.BetaTesters
        let betaTesters: App.Relationships.BetaTesters?
    
        /// App.Relationships.Builds
        let builds: App.Relationships.Builds?
    
        /// App.Relationships.BetaAppReviewDetail
        let betaAppReviewDetail: App.Relationships.BetaAppReviewDetail?
    }
}

/// MARK: App.Relationships
extension App.Relationships {
    
    struct BetaAppLocalizations: Decodable {
    
        /// [App.Relationships.BetaAppLocalizations.Data]
        let data: [App.Relationships.BetaAppLocalizations.Data]?
    
        /// App.Relationships.BetaAppLocalizations.Links
        let links: App.Relationships.BetaAppLocalizations.Links?
    
        /// PagingInformation
        let meta: PagingInformation?
    }
    
    struct BetaAppReviewDetail: Decodable {
    
        /// App.Relationships.BetaAppReviewDetail.Data
        let data: App.Relationships.BetaAppReviewDetail.Data?
    
        /// App.Relationships.BetaAppReviewDetail.Links
        let links: App.Relationships.BetaAppReviewDetail.Links?
    }
    
    struct BetaGroups: Decodable {
    
        /// [App.Relationships.BetaGroups.Data]
        let data: [App.Relationships.BetaGroups.Data]?
    
        /// App.Relationships.BetaGroups.Links
        let links: App.Relationships.BetaGroups.Links?
    
        /// PagingInformation
        let meta: PagingInformation?
    }
    
    struct BetaLicenseAgreement: Decodable {
    
        /// App.Relationships.BetaLicenseAgreement.Data
        let data: App.Relationships.BetaLicenseAgreement.Data?
    
        /// App.Relationships.BetaLicenseAgreement.Links
        let links: App.Relationships.BetaLicenseAgreement.Links?
    }
    
    struct BetaTesters: Decodable {
    
        /// [App.Relationships.BetaTesters.Data]
        let data: [App.Relationships.BetaTesters.Data]?
    
        /// App.Relationships.BetaTesters.Links
        let links: App.Relationships.BetaTesters.Links?
    
        /// PagingInformation
        let meta: PagingInformation?
    }
    
    struct Builds: Decodable {
    
        /// [App.Relationships.Builds.Data]
        let data: [App.Relationships.Builds.Data]?
    
        /// App.Relationships.Builds.Links
        let links: App.Relationships.Builds.Links?
    
        /// PagingInformation
        let meta: PagingInformation?
    }
    
    struct PreReleaseVersions: Decodable {
    
        /// [App.Relationships.PreReleaseVersions.Data]
        let data: [App.Relationships.PreReleaseVersions.Data]?
    
        /// App.Relationships.PreReleaseVersions.Links
        let links: App.Relationships.PreReleaseVersions.Links?
    
        /// PagingInformation
        let meta: PagingInformation?
    }
}

/// MARK: App.Relationships.BetaAppLocalizations
extension App.Relationships.BetaAppLocalizations {
    
    struct Data: Decodable {
    
        /// (Required) The opaque resource ID that uniquely identifies the resource.
        let `id`: String
    
        /// (Required) The resource type.Value: betaAppLocalizations
        let type: String
    }
    
    struct Links: Decodable {
    
        /// uri-reference
        let related: URL?
    
        /// uri-reference
        let `self`: URL?
    }
}

/// MARK: App.Relationships.BetaAppReviewDetail
extension App.Relationships.BetaAppReviewDetail {
    
    struct Data: Decodable {
    
        /// (Required) The opaque resource ID that uniquely identifies the resource.
        let `id`: String
    
        /// (Required) The resource type.Value: betaAppReviewDetails
        let type: String
    }
    
    struct Links: Decodable {
    
        /// uri-reference
        let related: URL?
    
        /// uri-reference
        let `self`: URL?
    }
}

/// MARK: App.Relationships.BetaGroups
extension App.Relationships.BetaGroups {
    
    struct Data: Decodable {
    
        /// (Required) The opaque resource ID that uniquely identifies the resource.
        let `id`: String
    
        /// (Required) The resource type.Value: betaGroups
        let type: String
    }
    
    struct Links: Decodable {
    
        /// uri-reference
        let related: URL?
    
        /// uri-reference
        let `self`: URL?
    }
}

/// MARK: App.Relationships.BetaLicenseAgreement
extension App.Relationships.BetaLicenseAgreement {
    
    struct Data: Decodable {
    
        /// (Required) The opaque resource ID that uniquely identifies the resource.
        let `id`: String
    
        /// (Required) The resource type.Value: betaLicenseAgreements
        let type: String
    }
    
    struct Links: Decodable {
    
        /// uri-reference
        let related: URL?
    
        /// uri-reference
        let `self`: URL?
    }
}

/// MARK: App.Relationships.BetaTesters
extension App.Relationships.BetaTesters {
    
    struct Data: Decodable {
    
        /// (Required) The opaque resource ID that uniquely identifies the resource.
        let `id`: String
    
        /// (Required) The resource type.Value: betaTesters
        let type: String
    }
    
    struct Links: Decodable {
    
        /// uri-reference
        let related: URL?
    
        /// uri-reference
        let `self`: URL?
    }
}

/// MARK: App.Relationships.Builds
extension App.Relationships.Builds {
    
    struct Data: Decodable {
    
        /// (Required) The opaque resource ID that uniquely identifies the resource.
        let `id`: String
    
        /// (Required) The resource type.Value: builds
        let type: String
    }
    
    struct Links: Decodable {
    
        /// uri-reference
        let related: URL?
    
        /// uri-reference
        let `self`: URL?
    }
}

/// MARK: App.Relationships.PreReleaseVersions
extension App.Relationships.PreReleaseVersions {
    
    struct Data: Decodable {
    
        /// (Required) The opaque resource ID that uniquely identifies the resource.
        let `id`: String
    
        /// (Required) The resource type.Value: preReleaseVersions
        let type: String
    }
    
    struct Links: Decodable {
    
        /// uri-reference
        let related: URL?
    
        /// uri-reference
        let `self`: URL?
    }
}