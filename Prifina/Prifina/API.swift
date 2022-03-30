// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public struct AddressBookAppUpsertInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - create: Create document if it didn't exist
  ///   - update: Update document if it exists
  public init(create: AddressBookAppCreateInput, update: AddressBookAppUpdateInput) {
    graphQLMap = ["create": create, "update": update]
  }

  /// Create document if it didn't exist
  public var create: AddressBookAppCreateInput {
    get {
      return graphQLMap["create"] as! AddressBookAppCreateInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "create")
    }
  }

  /// Update document if it exists
  public var update: AddressBookAppUpdateInput {
    get {
      return graphQLMap["update"] as! AddressBookAppUpdateInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "update")
    }
  }
}

public struct AddressBookAppCreateInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - createdAt
  ///   - updatedAt
  ///   - uploadedByUid
  ///   - name
  ///   - bio
  ///   - country
  ///   - mobile
  ///   - workNumber
  ///   - email
  ///   - jobDescription
  ///   - job
  ///   - contactId
  ///   - cl0k624914rzo01xk3hd6ca8l
  ///   - contacts
  ///   - contactPicture
  ///   - conversations
  ///   - messagesFrom
  public init(createdAt: Swift.Optional<String?> = nil, updatedAt: Swift.Optional<String?> = nil, uploadedByUid: String, name: Swift.Optional<String?> = nil, bio: Swift.Optional<String?> = nil, country: Swift.Optional<String?> = nil, mobile: Swift.Optional<String?> = nil, workNumber: Swift.Optional<String?> = nil, email: Swift.Optional<String?> = nil, jobDescription: Swift.Optional<String?> = nil, job: Swift.Optional<String?> = nil, contactId: String, cl0k624914rzo01xk3hd6ca8l: Swift.Optional<AddressBookAppCreateManyInlineInput?> = nil, contacts: Swift.Optional<AddressBookAppCreateManyInlineInput?> = nil, contactPicture: Swift.Optional<AssetCreateOneInlineInput?> = nil, conversations: Swift.Optional<ConversationCreateManyInlineInput?> = nil, messagesFrom: Swift.Optional<MessageCreateManyInlineInput?> = nil) {
    graphQLMap = ["createdAt": createdAt, "updatedAt": updatedAt, "uploadedByUid": uploadedByUid, "name": name, "bio": bio, "country": country, "mobile": mobile, "workNumber": workNumber, "email": email, "jobDescription": jobDescription, "job": job, "contactId": contactId, "cl0k624914rzo01xk3hd6ca8l": cl0k624914rzo01xk3hd6ca8l, "contacts": contacts, "contactPicture": contactPicture, "conversations": conversations, "messagesFrom": messagesFrom]
  }

  public var createdAt: Swift.Optional<String?> {
    get {
      return graphQLMap["createdAt"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var updatedAt: Swift.Optional<String?> {
    get {
      return graphQLMap["updatedAt"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updatedAt")
    }
  }

  public var uploadedByUid: String {
    get {
      return graphQLMap["uploadedByUid"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "uploadedByUid")
    }
  }

  public var name: Swift.Optional<String?> {
    get {
      return graphQLMap["name"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var bio: Swift.Optional<String?> {
    get {
      return graphQLMap["bio"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "bio")
    }
  }

  public var country: Swift.Optional<String?> {
    get {
      return graphQLMap["country"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "country")
    }
  }

  public var mobile: Swift.Optional<String?> {
    get {
      return graphQLMap["mobile"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mobile")
    }
  }

  public var workNumber: Swift.Optional<String?> {
    get {
      return graphQLMap["workNumber"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "workNumber")
    }
  }

  public var email: Swift.Optional<String?> {
    get {
      return graphQLMap["email"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }

  public var jobDescription: Swift.Optional<String?> {
    get {
      return graphQLMap["jobDescription"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "jobDescription")
    }
  }

  public var job: Swift.Optional<String?> {
    get {
      return graphQLMap["job"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "job")
    }
  }

  public var contactId: String {
    get {
      return graphQLMap["contactId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contactId")
    }
  }

  public var cl0k624914rzo01xk3hd6ca8l: Swift.Optional<AddressBookAppCreateManyInlineInput?> {
    get {
      return graphQLMap["cl0k624914rzo01xk3hd6ca8l"] as? Swift.Optional<AddressBookAppCreateManyInlineInput?> ?? Swift.Optional<AddressBookAppCreateManyInlineInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cl0k624914rzo01xk3hd6ca8l")
    }
  }

  public var contacts: Swift.Optional<AddressBookAppCreateManyInlineInput?> {
    get {
      return graphQLMap["contacts"] as? Swift.Optional<AddressBookAppCreateManyInlineInput?> ?? Swift.Optional<AddressBookAppCreateManyInlineInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contacts")
    }
  }

  public var contactPicture: Swift.Optional<AssetCreateOneInlineInput?> {
    get {
      return graphQLMap["contactPicture"] as? Swift.Optional<AssetCreateOneInlineInput?> ?? Swift.Optional<AssetCreateOneInlineInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contactPicture")
    }
  }

  public var conversations: Swift.Optional<ConversationCreateManyInlineInput?> {
    get {
      return graphQLMap["conversations"] as? Swift.Optional<ConversationCreateManyInlineInput?> ?? Swift.Optional<ConversationCreateManyInlineInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "conversations")
    }
  }

  public var messagesFrom: Swift.Optional<MessageCreateManyInlineInput?> {
    get {
      return graphQLMap["messagesFrom"] as? Swift.Optional<MessageCreateManyInlineInput?> ?? Swift.Optional<MessageCreateManyInlineInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "messagesFrom")
    }
  }
}

public struct AddressBookAppCreateManyInlineInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - create: Create and connect multiple existing AddressBookApp documents
  ///   - connect: Connect multiple existing AddressBookApp documents
  public init(create: Swift.Optional<[AddressBookAppCreateInput]?> = nil, connect: Swift.Optional<[AddressBookAppWhereUniqueInput]?> = nil) {
    graphQLMap = ["create": create, "connect": connect]
  }

  /// Create and connect multiple existing AddressBookApp documents
  public var create: Swift.Optional<[AddressBookAppCreateInput]?> {
    get {
      return graphQLMap["create"] as? Swift.Optional<[AddressBookAppCreateInput]?> ?? Swift.Optional<[AddressBookAppCreateInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "create")
    }
  }

  /// Connect multiple existing AddressBookApp documents
  public var connect: Swift.Optional<[AddressBookAppWhereUniqueInput]?> {
    get {
      return graphQLMap["connect"] as? Swift.Optional<[AddressBookAppWhereUniqueInput]?> ?? Swift.Optional<[AddressBookAppWhereUniqueInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "connect")
    }
  }
}

/// References AddressBookApp record uniquely
public struct AddressBookAppWhereUniqueInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - id
  ///   - email
  ///   - contactId
  public init(id: Swift.Optional<GraphQLID?> = nil, email: Swift.Optional<String?> = nil, contactId: Swift.Optional<String?> = nil) {
    graphQLMap = ["id": id, "email": email, "contactId": contactId]
  }

  public var id: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["id"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var email: Swift.Optional<String?> {
    get {
      return graphQLMap["email"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }

  public var contactId: Swift.Optional<String?> {
    get {
      return graphQLMap["contactId"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contactId")
    }
  }
}

public struct AssetCreateOneInlineInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - create: Create and connect one Asset document
  ///   - connect: Connect one existing Asset document
  public init(create: Swift.Optional<AssetCreateInput?> = nil, connect: Swift.Optional<AssetWhereUniqueInput?> = nil) {
    graphQLMap = ["create": create, "connect": connect]
  }

  /// Create and connect one Asset document
  public var create: Swift.Optional<AssetCreateInput?> {
    get {
      return graphQLMap["create"] as? Swift.Optional<AssetCreateInput?> ?? Swift.Optional<AssetCreateInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "create")
    }
  }

  /// Connect one existing Asset document
  public var connect: Swift.Optional<AssetWhereUniqueInput?> {
    get {
      return graphQLMap["connect"] as? Swift.Optional<AssetWhereUniqueInput?> ?? Swift.Optional<AssetWhereUniqueInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "connect")
    }
  }
}

public struct AssetCreateInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - createdAt
  ///   - updatedAt
  ///   - handle
  ///   - fileName
  ///   - height
  ///   - width
  ///   - size
  ///   - mimeType
  ///   - contactPictureAddressBookApp
  ///   - localizations: Inline mutations for managing document localizations excluding the default locale
  public init(createdAt: Swift.Optional<String?> = nil, updatedAt: Swift.Optional<String?> = nil, handle: String, fileName: String, height: Swift.Optional<Double?> = nil, width: Swift.Optional<Double?> = nil, size: Swift.Optional<Double?> = nil, mimeType: Swift.Optional<String?> = nil, contactPictureAddressBookApp: Swift.Optional<AddressBookAppCreateManyInlineInput?> = nil, localizations: Swift.Optional<AssetCreateLocalizationsInput?> = nil) {
    graphQLMap = ["createdAt": createdAt, "updatedAt": updatedAt, "handle": handle, "fileName": fileName, "height": height, "width": width, "size": size, "mimeType": mimeType, "contactPictureAddressBookApp": contactPictureAddressBookApp, "localizations": localizations]
  }

  public var createdAt: Swift.Optional<String?> {
    get {
      return graphQLMap["createdAt"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var updatedAt: Swift.Optional<String?> {
    get {
      return graphQLMap["updatedAt"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updatedAt")
    }
  }

  public var handle: String {
    get {
      return graphQLMap["handle"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "handle")
    }
  }

  public var fileName: String {
    get {
      return graphQLMap["fileName"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "fileName")
    }
  }

  public var height: Swift.Optional<Double?> {
    get {
      return graphQLMap["height"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "height")
    }
  }

  public var width: Swift.Optional<Double?> {
    get {
      return graphQLMap["width"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "width")
    }
  }

  public var size: Swift.Optional<Double?> {
    get {
      return graphQLMap["size"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }

  public var mimeType: Swift.Optional<String?> {
    get {
      return graphQLMap["mimeType"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mimeType")
    }
  }

  public var contactPictureAddressBookApp: Swift.Optional<AddressBookAppCreateManyInlineInput?> {
    get {
      return graphQLMap["contactPictureAddressBookApp"] as? Swift.Optional<AddressBookAppCreateManyInlineInput?> ?? Swift.Optional<AddressBookAppCreateManyInlineInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contactPictureAddressBookApp")
    }
  }

  /// Inline mutations for managing document localizations excluding the default locale
  public var localizations: Swift.Optional<AssetCreateLocalizationsInput?> {
    get {
      return graphQLMap["localizations"] as? Swift.Optional<AssetCreateLocalizationsInput?> ?? Swift.Optional<AssetCreateLocalizationsInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "localizations")
    }
  }
}

public struct AssetCreateLocalizationsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - create: Create localizations for the newly-created document
  public init(create: Swift.Optional<[AssetCreateLocalizationInput]?> = nil) {
    graphQLMap = ["create": create]
  }

  /// Create localizations for the newly-created document
  public var create: Swift.Optional<[AssetCreateLocalizationInput]?> {
    get {
      return graphQLMap["create"] as? Swift.Optional<[AssetCreateLocalizationInput]?> ?? Swift.Optional<[AssetCreateLocalizationInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "create")
    }
  }
}

public struct AssetCreateLocalizationInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - data: Localization input
  ///   - locale
  public init(data: AssetCreateLocalizationDataInput, locale: Locale) {
    graphQLMap = ["data": data, "locale": locale]
  }

  /// Localization input
  public var data: AssetCreateLocalizationDataInput {
    get {
      return graphQLMap["data"] as! AssetCreateLocalizationDataInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "data")
    }
  }

  public var locale: Locale {
    get {
      return graphQLMap["locale"] as! Locale
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "locale")
    }
  }
}

public struct AssetCreateLocalizationDataInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - createdAt
  ///   - updatedAt
  ///   - handle
  ///   - fileName
  ///   - height
  ///   - width
  ///   - size
  ///   - mimeType
  public init(createdAt: Swift.Optional<String?> = nil, updatedAt: Swift.Optional<String?> = nil, handle: String, fileName: String, height: Swift.Optional<Double?> = nil, width: Swift.Optional<Double?> = nil, size: Swift.Optional<Double?> = nil, mimeType: Swift.Optional<String?> = nil) {
    graphQLMap = ["createdAt": createdAt, "updatedAt": updatedAt, "handle": handle, "fileName": fileName, "height": height, "width": width, "size": size, "mimeType": mimeType]
  }

  public var createdAt: Swift.Optional<String?> {
    get {
      return graphQLMap["createdAt"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var updatedAt: Swift.Optional<String?> {
    get {
      return graphQLMap["updatedAt"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updatedAt")
    }
  }

  public var handle: String {
    get {
      return graphQLMap["handle"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "handle")
    }
  }

  public var fileName: String {
    get {
      return graphQLMap["fileName"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "fileName")
    }
  }

  public var height: Swift.Optional<Double?> {
    get {
      return graphQLMap["height"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "height")
    }
  }

  public var width: Swift.Optional<Double?> {
    get {
      return graphQLMap["width"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "width")
    }
  }

  public var size: Swift.Optional<Double?> {
    get {
      return graphQLMap["size"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }

  public var mimeType: Swift.Optional<String?> {
    get {
      return graphQLMap["mimeType"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mimeType")
    }
  }
}

/// Locale system enumeration
public enum Locale: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// System locale
  case en
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "en": self = .en
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .en: return "en"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: Locale, rhs: Locale) -> Bool {
    switch (lhs, rhs) {
      case (.en, .en): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [Locale] {
    return [
      .en,
    ]
  }
}

/// References Asset record uniquely
public struct AssetWhereUniqueInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - id
  public init(id: Swift.Optional<GraphQLID?> = nil) {
    graphQLMap = ["id": id]
  }

  public var id: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["id"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct ConversationCreateManyInlineInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - create: Create and connect multiple existing Conversation documents
  ///   - connect: Connect multiple existing Conversation documents
  public init(create: Swift.Optional<[ConversationCreateInput]?> = nil, connect: Swift.Optional<[ConversationWhereUniqueInput]?> = nil) {
    graphQLMap = ["create": create, "connect": connect]
  }

  /// Create and connect multiple existing Conversation documents
  public var create: Swift.Optional<[ConversationCreateInput]?> {
    get {
      return graphQLMap["create"] as? Swift.Optional<[ConversationCreateInput]?> ?? Swift.Optional<[ConversationCreateInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "create")
    }
  }

  /// Connect multiple existing Conversation documents
  public var connect: Swift.Optional<[ConversationWhereUniqueInput]?> {
    get {
      return graphQLMap["connect"] as? Swift.Optional<[ConversationWhereUniqueInput]?> ?? Swift.Optional<[ConversationWhereUniqueInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "connect")
    }
  }
}

public struct ConversationCreateInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - createdAt
  ///   - updatedAt
  ///   - messages
  ///   - addressBookApps
  public init(createdAt: Swift.Optional<String?> = nil, updatedAt: Swift.Optional<String?> = nil, messages: Swift.Optional<MessageCreateManyInlineInput?> = nil, addressBookApps: Swift.Optional<AddressBookAppCreateManyInlineInput?> = nil) {
    graphQLMap = ["createdAt": createdAt, "updatedAt": updatedAt, "messages": messages, "addressBookApps": addressBookApps]
  }

  public var createdAt: Swift.Optional<String?> {
    get {
      return graphQLMap["createdAt"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var updatedAt: Swift.Optional<String?> {
    get {
      return graphQLMap["updatedAt"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updatedAt")
    }
  }

  public var messages: Swift.Optional<MessageCreateManyInlineInput?> {
    get {
      return graphQLMap["messages"] as? Swift.Optional<MessageCreateManyInlineInput?> ?? Swift.Optional<MessageCreateManyInlineInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "messages")
    }
  }

  public var addressBookApps: Swift.Optional<AddressBookAppCreateManyInlineInput?> {
    get {
      return graphQLMap["addressBookApps"] as? Swift.Optional<AddressBookAppCreateManyInlineInput?> ?? Swift.Optional<AddressBookAppCreateManyInlineInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "addressBookApps")
    }
  }
}

public struct MessageCreateManyInlineInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - create: Create and connect multiple existing Message documents
  ///   - connect: Connect multiple existing Message documents
  public init(create: Swift.Optional<[MessageCreateInput]?> = nil, connect: Swift.Optional<[MessageWhereUniqueInput]?> = nil) {
    graphQLMap = ["create": create, "connect": connect]
  }

  /// Create and connect multiple existing Message documents
  public var create: Swift.Optional<[MessageCreateInput]?> {
    get {
      return graphQLMap["create"] as? Swift.Optional<[MessageCreateInput]?> ?? Swift.Optional<[MessageCreateInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "create")
    }
  }

  /// Connect multiple existing Message documents
  public var connect: Swift.Optional<[MessageWhereUniqueInput]?> {
    get {
      return graphQLMap["connect"] as? Swift.Optional<[MessageWhereUniqueInput]?> ?? Swift.Optional<[MessageWhereUniqueInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "connect")
    }
  }
}

public struct MessageCreateInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - createdAt
  ///   - updatedAt
  ///   - contents
  ///   - conversation
  ///   - from
  public init(createdAt: Swift.Optional<String?> = nil, updatedAt: Swift.Optional<String?> = nil, contents: Swift.Optional<String?> = nil, conversation: Swift.Optional<ConversationCreateOneInlineInput?> = nil, from: Swift.Optional<MessageFromCreateOneInlineInput?> = nil) {
    graphQLMap = ["createdAt": createdAt, "updatedAt": updatedAt, "contents": contents, "conversation": conversation, "from": from]
  }

  public var createdAt: Swift.Optional<String?> {
    get {
      return graphQLMap["createdAt"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var updatedAt: Swift.Optional<String?> {
    get {
      return graphQLMap["updatedAt"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updatedAt")
    }
  }

  public var contents: Swift.Optional<String?> {
    get {
      return graphQLMap["contents"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contents")
    }
  }

  public var conversation: Swift.Optional<ConversationCreateOneInlineInput?> {
    get {
      return graphQLMap["conversation"] as? Swift.Optional<ConversationCreateOneInlineInput?> ?? Swift.Optional<ConversationCreateOneInlineInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "conversation")
    }
  }

  public var from: Swift.Optional<MessageFromCreateOneInlineInput?> {
    get {
      return graphQLMap["from"] as? Swift.Optional<MessageFromCreateOneInlineInput?> ?? Swift.Optional<MessageFromCreateOneInlineInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "from")
    }
  }
}

public struct ConversationCreateOneInlineInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - create: Create and connect one Conversation document
  ///   - connect: Connect one existing Conversation document
  public init(create: Swift.Optional<ConversationCreateInput?> = nil, connect: Swift.Optional<ConversationWhereUniqueInput?> = nil) {
    graphQLMap = ["create": create, "connect": connect]
  }

  /// Create and connect one Conversation document
  public var create: Swift.Optional<ConversationCreateInput?> {
    get {
      return graphQLMap["create"] as? Swift.Optional<ConversationCreateInput?> ?? Swift.Optional<ConversationCreateInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "create")
    }
  }

  /// Connect one existing Conversation document
  public var connect: Swift.Optional<ConversationWhereUniqueInput?> {
    get {
      return graphQLMap["connect"] as? Swift.Optional<ConversationWhereUniqueInput?> ?? Swift.Optional<ConversationWhereUniqueInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "connect")
    }
  }
}

/// References Conversation record uniquely
public struct ConversationWhereUniqueInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - id
  public init(id: Swift.Optional<GraphQLID?> = nil) {
    graphQLMap = ["id": id]
  }

  public var id: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["id"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct MessageFromCreateOneInlineInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - create: Create and connect one MessageFrom document
  ///   - connect: Connect one existing MessageFrom document
  public init(create: Swift.Optional<MessageFromCreateInput?> = nil, connect: Swift.Optional<MessageFromWhereUniqueInput?> = nil) {
    graphQLMap = ["create": create, "connect": connect]
  }

  /// Create and connect one MessageFrom document
  public var create: Swift.Optional<MessageFromCreateInput?> {
    get {
      return graphQLMap["create"] as? Swift.Optional<MessageFromCreateInput?> ?? Swift.Optional<MessageFromCreateInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "create")
    }
  }

  /// Connect one existing MessageFrom document
  public var connect: Swift.Optional<MessageFromWhereUniqueInput?> {
    get {
      return graphQLMap["connect"] as? Swift.Optional<MessageFromWhereUniqueInput?> ?? Swift.Optional<MessageFromWhereUniqueInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "connect")
    }
  }
}

public struct MessageFromCreateInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - addressBookApp
  public init(addressBookApp: Swift.Optional<AddressBookAppCreateInput?> = nil) {
    graphQLMap = ["AddressBookApp": addressBookApp]
  }

  public var addressBookApp: Swift.Optional<AddressBookAppCreateInput?> {
    get {
      return graphQLMap["AddressBookApp"] as? Swift.Optional<AddressBookAppCreateInput?> ?? Swift.Optional<AddressBookAppCreateInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "AddressBookApp")
    }
  }
}

public struct MessageFromWhereUniqueInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - addressBookApp
  public init(addressBookApp: Swift.Optional<AddressBookAppWhereUniqueInput?> = nil) {
    graphQLMap = ["AddressBookApp": addressBookApp]
  }

  public var addressBookApp: Swift.Optional<AddressBookAppWhereUniqueInput?> {
    get {
      return graphQLMap["AddressBookApp"] as? Swift.Optional<AddressBookAppWhereUniqueInput?> ?? Swift.Optional<AddressBookAppWhereUniqueInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "AddressBookApp")
    }
  }
}

/// References Message record uniquely
public struct MessageWhereUniqueInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - id
  public init(id: Swift.Optional<GraphQLID?> = nil) {
    graphQLMap = ["id": id]
  }

  public var id: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["id"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct AddressBookAppUpdateInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - uploadedByUid
  ///   - name
  ///   - bio
  ///   - country
  ///   - mobile
  ///   - workNumber
  ///   - email
  ///   - jobDescription
  ///   - job
  ///   - contactId
  ///   - cl0k624914rzo01xk3hd6ca8l
  ///   - contacts
  ///   - contactPicture
  ///   - conversations
  ///   - messagesFrom
  public init(uploadedByUid: Swift.Optional<String?> = nil, name: Swift.Optional<String?> = nil, bio: Swift.Optional<String?> = nil, country: Swift.Optional<String?> = nil, mobile: Swift.Optional<String?> = nil, workNumber: Swift.Optional<String?> = nil, email: Swift.Optional<String?> = nil, jobDescription: Swift.Optional<String?> = nil, job: Swift.Optional<String?> = nil, contactId: Swift.Optional<String?> = nil, cl0k624914rzo01xk3hd6ca8l: Swift.Optional<AddressBookAppUpdateManyInlineInput?> = nil, contacts: Swift.Optional<AddressBookAppUpdateManyInlineInput?> = nil, contactPicture: Swift.Optional<AssetUpdateOneInlineInput?> = nil, conversations: Swift.Optional<ConversationUpdateManyInlineInput?> = nil, messagesFrom: Swift.Optional<MessageUpdateManyInlineInput?> = nil) {
    graphQLMap = ["uploadedByUid": uploadedByUid, "name": name, "bio": bio, "country": country, "mobile": mobile, "workNumber": workNumber, "email": email, "jobDescription": jobDescription, "job": job, "contactId": contactId, "cl0k624914rzo01xk3hd6ca8l": cl0k624914rzo01xk3hd6ca8l, "contacts": contacts, "contactPicture": contactPicture, "conversations": conversations, "messagesFrom": messagesFrom]
  }

  public var uploadedByUid: Swift.Optional<String?> {
    get {
      return graphQLMap["uploadedByUid"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "uploadedByUid")
    }
  }

  public var name: Swift.Optional<String?> {
    get {
      return graphQLMap["name"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var bio: Swift.Optional<String?> {
    get {
      return graphQLMap["bio"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "bio")
    }
  }

  public var country: Swift.Optional<String?> {
    get {
      return graphQLMap["country"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "country")
    }
  }

  public var mobile: Swift.Optional<String?> {
    get {
      return graphQLMap["mobile"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mobile")
    }
  }

  public var workNumber: Swift.Optional<String?> {
    get {
      return graphQLMap["workNumber"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "workNumber")
    }
  }

  public var email: Swift.Optional<String?> {
    get {
      return graphQLMap["email"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }

  public var jobDescription: Swift.Optional<String?> {
    get {
      return graphQLMap["jobDescription"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "jobDescription")
    }
  }

  public var job: Swift.Optional<String?> {
    get {
      return graphQLMap["job"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "job")
    }
  }

  public var contactId: Swift.Optional<String?> {
    get {
      return graphQLMap["contactId"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contactId")
    }
  }

  public var cl0k624914rzo01xk3hd6ca8l: Swift.Optional<AddressBookAppUpdateManyInlineInput?> {
    get {
      return graphQLMap["cl0k624914rzo01xk3hd6ca8l"] as? Swift.Optional<AddressBookAppUpdateManyInlineInput?> ?? Swift.Optional<AddressBookAppUpdateManyInlineInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cl0k624914rzo01xk3hd6ca8l")
    }
  }

  public var contacts: Swift.Optional<AddressBookAppUpdateManyInlineInput?> {
    get {
      return graphQLMap["contacts"] as? Swift.Optional<AddressBookAppUpdateManyInlineInput?> ?? Swift.Optional<AddressBookAppUpdateManyInlineInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contacts")
    }
  }

  public var contactPicture: Swift.Optional<AssetUpdateOneInlineInput?> {
    get {
      return graphQLMap["contactPicture"] as? Swift.Optional<AssetUpdateOneInlineInput?> ?? Swift.Optional<AssetUpdateOneInlineInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contactPicture")
    }
  }

  public var conversations: Swift.Optional<ConversationUpdateManyInlineInput?> {
    get {
      return graphQLMap["conversations"] as? Swift.Optional<ConversationUpdateManyInlineInput?> ?? Swift.Optional<ConversationUpdateManyInlineInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "conversations")
    }
  }

  public var messagesFrom: Swift.Optional<MessageUpdateManyInlineInput?> {
    get {
      return graphQLMap["messagesFrom"] as? Swift.Optional<MessageUpdateManyInlineInput?> ?? Swift.Optional<MessageUpdateManyInlineInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "messagesFrom")
    }
  }
}

public struct AddressBookAppUpdateManyInlineInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - create: Create and connect multiple AddressBookApp documents
  ///   - connect: Connect multiple existing AddressBookApp documents
  ///   - set: Override currently-connected documents with multiple existing AddressBookApp documents
  ///   - update: Update multiple AddressBookApp documents
  ///   - upsert: Upsert multiple AddressBookApp documents
  ///   - disconnect: Disconnect multiple AddressBookApp documents
  ///   - delete: Delete multiple AddressBookApp documents
  public init(create: Swift.Optional<[AddressBookAppCreateInput]?> = nil, connect: Swift.Optional<[AddressBookAppConnectInput]?> = nil, `set`: Swift.Optional<[AddressBookAppWhereUniqueInput]?> = nil, update: Swift.Optional<[AddressBookAppUpdateWithNestedWhereUniqueInput]?> = nil, upsert: Swift.Optional<[AddressBookAppUpsertWithNestedWhereUniqueInput]?> = nil, disconnect: Swift.Optional<[AddressBookAppWhereUniqueInput]?> = nil, delete: Swift.Optional<[AddressBookAppWhereUniqueInput]?> = nil) {
    graphQLMap = ["create": create, "connect": connect, "set": `set`, "update": update, "upsert": upsert, "disconnect": disconnect, "delete": delete]
  }

  /// Create and connect multiple AddressBookApp documents
  public var create: Swift.Optional<[AddressBookAppCreateInput]?> {
    get {
      return graphQLMap["create"] as? Swift.Optional<[AddressBookAppCreateInput]?> ?? Swift.Optional<[AddressBookAppCreateInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "create")
    }
  }

  /// Connect multiple existing AddressBookApp documents
  public var connect: Swift.Optional<[AddressBookAppConnectInput]?> {
    get {
      return graphQLMap["connect"] as? Swift.Optional<[AddressBookAppConnectInput]?> ?? Swift.Optional<[AddressBookAppConnectInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "connect")
    }
  }

  /// Override currently-connected documents with multiple existing AddressBookApp documents
  public var `set`: Swift.Optional<[AddressBookAppWhereUniqueInput]?> {
    get {
      return graphQLMap["set"] as? Swift.Optional<[AddressBookAppWhereUniqueInput]?> ?? Swift.Optional<[AddressBookAppWhereUniqueInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "set")
    }
  }

  /// Update multiple AddressBookApp documents
  public var update: Swift.Optional<[AddressBookAppUpdateWithNestedWhereUniqueInput]?> {
    get {
      return graphQLMap["update"] as? Swift.Optional<[AddressBookAppUpdateWithNestedWhereUniqueInput]?> ?? Swift.Optional<[AddressBookAppUpdateWithNestedWhereUniqueInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "update")
    }
  }

  /// Upsert multiple AddressBookApp documents
  public var upsert: Swift.Optional<[AddressBookAppUpsertWithNestedWhereUniqueInput]?> {
    get {
      return graphQLMap["upsert"] as? Swift.Optional<[AddressBookAppUpsertWithNestedWhereUniqueInput]?> ?? Swift.Optional<[AddressBookAppUpsertWithNestedWhereUniqueInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "upsert")
    }
  }

  /// Disconnect multiple AddressBookApp documents
  public var disconnect: Swift.Optional<[AddressBookAppWhereUniqueInput]?> {
    get {
      return graphQLMap["disconnect"] as? Swift.Optional<[AddressBookAppWhereUniqueInput]?> ?? Swift.Optional<[AddressBookAppWhereUniqueInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "disconnect")
    }
  }

  /// Delete multiple AddressBookApp documents
  public var delete: Swift.Optional<[AddressBookAppWhereUniqueInput]?> {
    get {
      return graphQLMap["delete"] as? Swift.Optional<[AddressBookAppWhereUniqueInput]?> ?? Swift.Optional<[AddressBookAppWhereUniqueInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "delete")
    }
  }
}

public struct AddressBookAppConnectInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - where: Document to connect
  ///   - position: Allow to specify document position in list of connected documents, will default to appending at end of list
  public init(`where`: AddressBookAppWhereUniqueInput, position: Swift.Optional<ConnectPositionInput?> = nil) {
    graphQLMap = ["where": `where`, "position": position]
  }

  /// Document to connect
  public var `where`: AddressBookAppWhereUniqueInput {
    get {
      return graphQLMap["where"] as! AddressBookAppWhereUniqueInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "where")
    }
  }

  /// Allow to specify document position in list of connected documents, will default to appending at end of list
  public var position: Swift.Optional<ConnectPositionInput?> {
    get {
      return graphQLMap["position"] as? Swift.Optional<ConnectPositionInput?> ?? Swift.Optional<ConnectPositionInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "position")
    }
  }
}

public struct ConnectPositionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - after: Connect document after specified document
  ///   - before: Connect document before specified document
  ///   - start: Connect document at first position
  ///   - end: Connect document at last position
  public init(after: Swift.Optional<GraphQLID?> = nil, before: Swift.Optional<GraphQLID?> = nil, start: Swift.Optional<Bool?> = nil, end: Swift.Optional<Bool?> = nil) {
    graphQLMap = ["after": after, "before": before, "start": start, "end": end]
  }

  /// Connect document after specified document
  public var after: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["after"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "after")
    }
  }

  /// Connect document before specified document
  public var before: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["before"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "before")
    }
  }

  /// Connect document at first position
  public var start: Swift.Optional<Bool?> {
    get {
      return graphQLMap["start"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "start")
    }
  }

  /// Connect document at last position
  public var end: Swift.Optional<Bool?> {
    get {
      return graphQLMap["end"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "end")
    }
  }
}

public struct AddressBookAppUpdateWithNestedWhereUniqueInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - where: Unique document search
  ///   - data: Document to update
  public init(`where`: AddressBookAppWhereUniqueInput, data: AddressBookAppUpdateInput) {
    graphQLMap = ["where": `where`, "data": data]
  }

  /// Unique document search
  public var `where`: AddressBookAppWhereUniqueInput {
    get {
      return graphQLMap["where"] as! AddressBookAppWhereUniqueInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "where")
    }
  }

  /// Document to update
  public var data: AddressBookAppUpdateInput {
    get {
      return graphQLMap["data"] as! AddressBookAppUpdateInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "data")
    }
  }
}

public struct AddressBookAppUpsertWithNestedWhereUniqueInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - where: Unique document search
  ///   - data: Upsert data
  public init(`where`: AddressBookAppWhereUniqueInput, data: AddressBookAppUpsertInput) {
    graphQLMap = ["where": `where`, "data": data]
  }

  /// Unique document search
  public var `where`: AddressBookAppWhereUniqueInput {
    get {
      return graphQLMap["where"] as! AddressBookAppWhereUniqueInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "where")
    }
  }

  /// Upsert data
  public var data: AddressBookAppUpsertInput {
    get {
      return graphQLMap["data"] as! AddressBookAppUpsertInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "data")
    }
  }
}

public struct AssetUpdateOneInlineInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - create: Create and connect one Asset document
  ///   - update: Update single Asset document
  ///   - upsert: Upsert single Asset document
  ///   - connect: Connect existing Asset document
  ///   - disconnect: Disconnect currently connected Asset document
  ///   - delete: Delete currently connected Asset document
  public init(create: Swift.Optional<AssetCreateInput?> = nil, update: Swift.Optional<AssetUpdateWithNestedWhereUniqueInput?> = nil, upsert: Swift.Optional<AssetUpsertWithNestedWhereUniqueInput?> = nil, connect: Swift.Optional<AssetWhereUniqueInput?> = nil, disconnect: Swift.Optional<Bool?> = nil, delete: Swift.Optional<Bool?> = nil) {
    graphQLMap = ["create": create, "update": update, "upsert": upsert, "connect": connect, "disconnect": disconnect, "delete": delete]
  }

  /// Create and connect one Asset document
  public var create: Swift.Optional<AssetCreateInput?> {
    get {
      return graphQLMap["create"] as? Swift.Optional<AssetCreateInput?> ?? Swift.Optional<AssetCreateInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "create")
    }
  }

  /// Update single Asset document
  public var update: Swift.Optional<AssetUpdateWithNestedWhereUniqueInput?> {
    get {
      return graphQLMap["update"] as? Swift.Optional<AssetUpdateWithNestedWhereUniqueInput?> ?? Swift.Optional<AssetUpdateWithNestedWhereUniqueInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "update")
    }
  }

  /// Upsert single Asset document
  public var upsert: Swift.Optional<AssetUpsertWithNestedWhereUniqueInput?> {
    get {
      return graphQLMap["upsert"] as? Swift.Optional<AssetUpsertWithNestedWhereUniqueInput?> ?? Swift.Optional<AssetUpsertWithNestedWhereUniqueInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "upsert")
    }
  }

  /// Connect existing Asset document
  public var connect: Swift.Optional<AssetWhereUniqueInput?> {
    get {
      return graphQLMap["connect"] as? Swift.Optional<AssetWhereUniqueInput?> ?? Swift.Optional<AssetWhereUniqueInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "connect")
    }
  }

  /// Disconnect currently connected Asset document
  public var disconnect: Swift.Optional<Bool?> {
    get {
      return graphQLMap["disconnect"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "disconnect")
    }
  }

  /// Delete currently connected Asset document
  public var delete: Swift.Optional<Bool?> {
    get {
      return graphQLMap["delete"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "delete")
    }
  }
}

public struct AssetUpdateWithNestedWhereUniqueInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - where: Unique document search
  ///   - data: Document to update
  public init(`where`: AssetWhereUniqueInput, data: AssetUpdateInput) {
    graphQLMap = ["where": `where`, "data": data]
  }

  /// Unique document search
  public var `where`: AssetWhereUniqueInput {
    get {
      return graphQLMap["where"] as! AssetWhereUniqueInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "where")
    }
  }

  /// Document to update
  public var data: AssetUpdateInput {
    get {
      return graphQLMap["data"] as! AssetUpdateInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "data")
    }
  }
}

public struct AssetUpdateInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - handle
  ///   - fileName
  ///   - height
  ///   - width
  ///   - size
  ///   - mimeType
  ///   - contactPictureAddressBookApp
  ///   - localizations: Manage document localizations
  public init(handle: Swift.Optional<String?> = nil, fileName: Swift.Optional<String?> = nil, height: Swift.Optional<Double?> = nil, width: Swift.Optional<Double?> = nil, size: Swift.Optional<Double?> = nil, mimeType: Swift.Optional<String?> = nil, contactPictureAddressBookApp: Swift.Optional<AddressBookAppUpdateManyInlineInput?> = nil, localizations: Swift.Optional<AssetUpdateLocalizationsInput?> = nil) {
    graphQLMap = ["handle": handle, "fileName": fileName, "height": height, "width": width, "size": size, "mimeType": mimeType, "contactPictureAddressBookApp": contactPictureAddressBookApp, "localizations": localizations]
  }

  public var handle: Swift.Optional<String?> {
    get {
      return graphQLMap["handle"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "handle")
    }
  }

  public var fileName: Swift.Optional<String?> {
    get {
      return graphQLMap["fileName"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "fileName")
    }
  }

  public var height: Swift.Optional<Double?> {
    get {
      return graphQLMap["height"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "height")
    }
  }

  public var width: Swift.Optional<Double?> {
    get {
      return graphQLMap["width"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "width")
    }
  }

  public var size: Swift.Optional<Double?> {
    get {
      return graphQLMap["size"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }

  public var mimeType: Swift.Optional<String?> {
    get {
      return graphQLMap["mimeType"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mimeType")
    }
  }

  public var contactPictureAddressBookApp: Swift.Optional<AddressBookAppUpdateManyInlineInput?> {
    get {
      return graphQLMap["contactPictureAddressBookApp"] as? Swift.Optional<AddressBookAppUpdateManyInlineInput?> ?? Swift.Optional<AddressBookAppUpdateManyInlineInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contactPictureAddressBookApp")
    }
  }

  /// Manage document localizations
  public var localizations: Swift.Optional<AssetUpdateLocalizationsInput?> {
    get {
      return graphQLMap["localizations"] as? Swift.Optional<AssetUpdateLocalizationsInput?> ?? Swift.Optional<AssetUpdateLocalizationsInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "localizations")
    }
  }
}

public struct AssetUpdateLocalizationsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - create: Localizations to create
  ///   - update: Localizations to update
  ///   - upsert
  ///   - delete: Localizations to delete
  public init(create: Swift.Optional<[AssetCreateLocalizationInput]?> = nil, update: Swift.Optional<[AssetUpdateLocalizationInput]?> = nil, upsert: Swift.Optional<[AssetUpsertLocalizationInput]?> = nil, delete: Swift.Optional<[Locale]?> = nil) {
    graphQLMap = ["create": create, "update": update, "upsert": upsert, "delete": delete]
  }

  /// Localizations to create
  public var create: Swift.Optional<[AssetCreateLocalizationInput]?> {
    get {
      return graphQLMap["create"] as? Swift.Optional<[AssetCreateLocalizationInput]?> ?? Swift.Optional<[AssetCreateLocalizationInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "create")
    }
  }

  /// Localizations to update
  public var update: Swift.Optional<[AssetUpdateLocalizationInput]?> {
    get {
      return graphQLMap["update"] as? Swift.Optional<[AssetUpdateLocalizationInput]?> ?? Swift.Optional<[AssetUpdateLocalizationInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "update")
    }
  }

  public var upsert: Swift.Optional<[AssetUpsertLocalizationInput]?> {
    get {
      return graphQLMap["upsert"] as? Swift.Optional<[AssetUpsertLocalizationInput]?> ?? Swift.Optional<[AssetUpsertLocalizationInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "upsert")
    }
  }

  /// Localizations to delete
  public var delete: Swift.Optional<[Locale]?> {
    get {
      return graphQLMap["delete"] as? Swift.Optional<[Locale]?> ?? Swift.Optional<[Locale]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "delete")
    }
  }
}

public struct AssetUpdateLocalizationInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - data
  ///   - locale
  public init(data: AssetUpdateLocalizationDataInput, locale: Locale) {
    graphQLMap = ["data": data, "locale": locale]
  }

  public var data: AssetUpdateLocalizationDataInput {
    get {
      return graphQLMap["data"] as! AssetUpdateLocalizationDataInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "data")
    }
  }

  public var locale: Locale {
    get {
      return graphQLMap["locale"] as! Locale
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "locale")
    }
  }
}

public struct AssetUpdateLocalizationDataInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - handle
  ///   - fileName
  ///   - height
  ///   - width
  ///   - size
  ///   - mimeType
  public init(handle: Swift.Optional<String?> = nil, fileName: Swift.Optional<String?> = nil, height: Swift.Optional<Double?> = nil, width: Swift.Optional<Double?> = nil, size: Swift.Optional<Double?> = nil, mimeType: Swift.Optional<String?> = nil) {
    graphQLMap = ["handle": handle, "fileName": fileName, "height": height, "width": width, "size": size, "mimeType": mimeType]
  }

  public var handle: Swift.Optional<String?> {
    get {
      return graphQLMap["handle"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "handle")
    }
  }

  public var fileName: Swift.Optional<String?> {
    get {
      return graphQLMap["fileName"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "fileName")
    }
  }

  public var height: Swift.Optional<Double?> {
    get {
      return graphQLMap["height"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "height")
    }
  }

  public var width: Swift.Optional<Double?> {
    get {
      return graphQLMap["width"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "width")
    }
  }

  public var size: Swift.Optional<Double?> {
    get {
      return graphQLMap["size"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }

  public var mimeType: Swift.Optional<String?> {
    get {
      return graphQLMap["mimeType"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mimeType")
    }
  }
}

public struct AssetUpsertLocalizationInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - update
  ///   - create
  ///   - locale
  public init(update: AssetUpdateLocalizationDataInput, create: AssetCreateLocalizationDataInput, locale: Locale) {
    graphQLMap = ["update": update, "create": create, "locale": locale]
  }

  public var update: AssetUpdateLocalizationDataInput {
    get {
      return graphQLMap["update"] as! AssetUpdateLocalizationDataInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "update")
    }
  }

  public var create: AssetCreateLocalizationDataInput {
    get {
      return graphQLMap["create"] as! AssetCreateLocalizationDataInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "create")
    }
  }

  public var locale: Locale {
    get {
      return graphQLMap["locale"] as! Locale
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "locale")
    }
  }
}

public struct AssetUpsertWithNestedWhereUniqueInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - where: Unique document search
  ///   - data: Upsert data
  public init(`where`: AssetWhereUniqueInput, data: AssetUpsertInput) {
    graphQLMap = ["where": `where`, "data": data]
  }

  /// Unique document search
  public var `where`: AssetWhereUniqueInput {
    get {
      return graphQLMap["where"] as! AssetWhereUniqueInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "where")
    }
  }

  /// Upsert data
  public var data: AssetUpsertInput {
    get {
      return graphQLMap["data"] as! AssetUpsertInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "data")
    }
  }
}

public struct AssetUpsertInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - create: Create document if it didn't exist
  ///   - update: Update document if it exists
  public init(create: AssetCreateInput, update: AssetUpdateInput) {
    graphQLMap = ["create": create, "update": update]
  }

  /// Create document if it didn't exist
  public var create: AssetCreateInput {
    get {
      return graphQLMap["create"] as! AssetCreateInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "create")
    }
  }

  /// Update document if it exists
  public var update: AssetUpdateInput {
    get {
      return graphQLMap["update"] as! AssetUpdateInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "update")
    }
  }
}

public struct ConversationUpdateManyInlineInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - create: Create and connect multiple Conversation documents
  ///   - connect: Connect multiple existing Conversation documents
  ///   - set: Override currently-connected documents with multiple existing Conversation documents
  ///   - update: Update multiple Conversation documents
  ///   - upsert: Upsert multiple Conversation documents
  ///   - disconnect: Disconnect multiple Conversation documents
  ///   - delete: Delete multiple Conversation documents
  public init(create: Swift.Optional<[ConversationCreateInput]?> = nil, connect: Swift.Optional<[ConversationConnectInput]?> = nil, `set`: Swift.Optional<[ConversationWhereUniqueInput]?> = nil, update: Swift.Optional<[ConversationUpdateWithNestedWhereUniqueInput]?> = nil, upsert: Swift.Optional<[ConversationUpsertWithNestedWhereUniqueInput]?> = nil, disconnect: Swift.Optional<[ConversationWhereUniqueInput]?> = nil, delete: Swift.Optional<[ConversationWhereUniqueInput]?> = nil) {
    graphQLMap = ["create": create, "connect": connect, "set": `set`, "update": update, "upsert": upsert, "disconnect": disconnect, "delete": delete]
  }

  /// Create and connect multiple Conversation documents
  public var create: Swift.Optional<[ConversationCreateInput]?> {
    get {
      return graphQLMap["create"] as? Swift.Optional<[ConversationCreateInput]?> ?? Swift.Optional<[ConversationCreateInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "create")
    }
  }

  /// Connect multiple existing Conversation documents
  public var connect: Swift.Optional<[ConversationConnectInput]?> {
    get {
      return graphQLMap["connect"] as? Swift.Optional<[ConversationConnectInput]?> ?? Swift.Optional<[ConversationConnectInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "connect")
    }
  }

  /// Override currently-connected documents with multiple existing Conversation documents
  public var `set`: Swift.Optional<[ConversationWhereUniqueInput]?> {
    get {
      return graphQLMap["set"] as? Swift.Optional<[ConversationWhereUniqueInput]?> ?? Swift.Optional<[ConversationWhereUniqueInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "set")
    }
  }

  /// Update multiple Conversation documents
  public var update: Swift.Optional<[ConversationUpdateWithNestedWhereUniqueInput]?> {
    get {
      return graphQLMap["update"] as? Swift.Optional<[ConversationUpdateWithNestedWhereUniqueInput]?> ?? Swift.Optional<[ConversationUpdateWithNestedWhereUniqueInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "update")
    }
  }

  /// Upsert multiple Conversation documents
  public var upsert: Swift.Optional<[ConversationUpsertWithNestedWhereUniqueInput]?> {
    get {
      return graphQLMap["upsert"] as? Swift.Optional<[ConversationUpsertWithNestedWhereUniqueInput]?> ?? Swift.Optional<[ConversationUpsertWithNestedWhereUniqueInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "upsert")
    }
  }

  /// Disconnect multiple Conversation documents
  public var disconnect: Swift.Optional<[ConversationWhereUniqueInput]?> {
    get {
      return graphQLMap["disconnect"] as? Swift.Optional<[ConversationWhereUniqueInput]?> ?? Swift.Optional<[ConversationWhereUniqueInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "disconnect")
    }
  }

  /// Delete multiple Conversation documents
  public var delete: Swift.Optional<[ConversationWhereUniqueInput]?> {
    get {
      return graphQLMap["delete"] as? Swift.Optional<[ConversationWhereUniqueInput]?> ?? Swift.Optional<[ConversationWhereUniqueInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "delete")
    }
  }
}

public struct ConversationConnectInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - where: Document to connect
  ///   - position: Allow to specify document position in list of connected documents, will default to appending at end of list
  public init(`where`: ConversationWhereUniqueInput, position: Swift.Optional<ConnectPositionInput?> = nil) {
    graphQLMap = ["where": `where`, "position": position]
  }

  /// Document to connect
  public var `where`: ConversationWhereUniqueInput {
    get {
      return graphQLMap["where"] as! ConversationWhereUniqueInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "where")
    }
  }

  /// Allow to specify document position in list of connected documents, will default to appending at end of list
  public var position: Swift.Optional<ConnectPositionInput?> {
    get {
      return graphQLMap["position"] as? Swift.Optional<ConnectPositionInput?> ?? Swift.Optional<ConnectPositionInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "position")
    }
  }
}

public struct ConversationUpdateWithNestedWhereUniqueInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - where: Unique document search
  ///   - data: Document to update
  public init(`where`: ConversationWhereUniqueInput, data: ConversationUpdateInput) {
    graphQLMap = ["where": `where`, "data": data]
  }

  /// Unique document search
  public var `where`: ConversationWhereUniqueInput {
    get {
      return graphQLMap["where"] as! ConversationWhereUniqueInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "where")
    }
  }

  /// Document to update
  public var data: ConversationUpdateInput {
    get {
      return graphQLMap["data"] as! ConversationUpdateInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "data")
    }
  }
}

public struct ConversationUpdateInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - messages
  ///   - addressBookApps
  public init(messages: Swift.Optional<MessageUpdateManyInlineInput?> = nil, addressBookApps: Swift.Optional<AddressBookAppUpdateManyInlineInput?> = nil) {
    graphQLMap = ["messages": messages, "addressBookApps": addressBookApps]
  }

  public var messages: Swift.Optional<MessageUpdateManyInlineInput?> {
    get {
      return graphQLMap["messages"] as? Swift.Optional<MessageUpdateManyInlineInput?> ?? Swift.Optional<MessageUpdateManyInlineInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "messages")
    }
  }

  public var addressBookApps: Swift.Optional<AddressBookAppUpdateManyInlineInput?> {
    get {
      return graphQLMap["addressBookApps"] as? Swift.Optional<AddressBookAppUpdateManyInlineInput?> ?? Swift.Optional<AddressBookAppUpdateManyInlineInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "addressBookApps")
    }
  }
}

public struct MessageUpdateManyInlineInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - create: Create and connect multiple Message documents
  ///   - connect: Connect multiple existing Message documents
  ///   - set: Override currently-connected documents with multiple existing Message documents
  ///   - update: Update multiple Message documents
  ///   - upsert: Upsert multiple Message documents
  ///   - disconnect: Disconnect multiple Message documents
  ///   - delete: Delete multiple Message documents
  public init(create: Swift.Optional<[MessageCreateInput]?> = nil, connect: Swift.Optional<[MessageConnectInput]?> = nil, `set`: Swift.Optional<[MessageWhereUniqueInput]?> = nil, update: Swift.Optional<[MessageUpdateWithNestedWhereUniqueInput]?> = nil, upsert: Swift.Optional<[MessageUpsertWithNestedWhereUniqueInput]?> = nil, disconnect: Swift.Optional<[MessageWhereUniqueInput]?> = nil, delete: Swift.Optional<[MessageWhereUniqueInput]?> = nil) {
    graphQLMap = ["create": create, "connect": connect, "set": `set`, "update": update, "upsert": upsert, "disconnect": disconnect, "delete": delete]
  }

  /// Create and connect multiple Message documents
  public var create: Swift.Optional<[MessageCreateInput]?> {
    get {
      return graphQLMap["create"] as? Swift.Optional<[MessageCreateInput]?> ?? Swift.Optional<[MessageCreateInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "create")
    }
  }

  /// Connect multiple existing Message documents
  public var connect: Swift.Optional<[MessageConnectInput]?> {
    get {
      return graphQLMap["connect"] as? Swift.Optional<[MessageConnectInput]?> ?? Swift.Optional<[MessageConnectInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "connect")
    }
  }

  /// Override currently-connected documents with multiple existing Message documents
  public var `set`: Swift.Optional<[MessageWhereUniqueInput]?> {
    get {
      return graphQLMap["set"] as? Swift.Optional<[MessageWhereUniqueInput]?> ?? Swift.Optional<[MessageWhereUniqueInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "set")
    }
  }

  /// Update multiple Message documents
  public var update: Swift.Optional<[MessageUpdateWithNestedWhereUniqueInput]?> {
    get {
      return graphQLMap["update"] as? Swift.Optional<[MessageUpdateWithNestedWhereUniqueInput]?> ?? Swift.Optional<[MessageUpdateWithNestedWhereUniqueInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "update")
    }
  }

  /// Upsert multiple Message documents
  public var upsert: Swift.Optional<[MessageUpsertWithNestedWhereUniqueInput]?> {
    get {
      return graphQLMap["upsert"] as? Swift.Optional<[MessageUpsertWithNestedWhereUniqueInput]?> ?? Swift.Optional<[MessageUpsertWithNestedWhereUniqueInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "upsert")
    }
  }

  /// Disconnect multiple Message documents
  public var disconnect: Swift.Optional<[MessageWhereUniqueInput]?> {
    get {
      return graphQLMap["disconnect"] as? Swift.Optional<[MessageWhereUniqueInput]?> ?? Swift.Optional<[MessageWhereUniqueInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "disconnect")
    }
  }

  /// Delete multiple Message documents
  public var delete: Swift.Optional<[MessageWhereUniqueInput]?> {
    get {
      return graphQLMap["delete"] as? Swift.Optional<[MessageWhereUniqueInput]?> ?? Swift.Optional<[MessageWhereUniqueInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "delete")
    }
  }
}

public struct MessageConnectInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - where: Document to connect
  ///   - position: Allow to specify document position in list of connected documents, will default to appending at end of list
  public init(`where`: MessageWhereUniqueInput, position: Swift.Optional<ConnectPositionInput?> = nil) {
    graphQLMap = ["where": `where`, "position": position]
  }

  /// Document to connect
  public var `where`: MessageWhereUniqueInput {
    get {
      return graphQLMap["where"] as! MessageWhereUniqueInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "where")
    }
  }

  /// Allow to specify document position in list of connected documents, will default to appending at end of list
  public var position: Swift.Optional<ConnectPositionInput?> {
    get {
      return graphQLMap["position"] as? Swift.Optional<ConnectPositionInput?> ?? Swift.Optional<ConnectPositionInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "position")
    }
  }
}

public struct MessageUpdateWithNestedWhereUniqueInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - where: Unique document search
  ///   - data: Document to update
  public init(`where`: MessageWhereUniqueInput, data: MessageUpdateInput) {
    graphQLMap = ["where": `where`, "data": data]
  }

  /// Unique document search
  public var `where`: MessageWhereUniqueInput {
    get {
      return graphQLMap["where"] as! MessageWhereUniqueInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "where")
    }
  }

  /// Document to update
  public var data: MessageUpdateInput {
    get {
      return graphQLMap["data"] as! MessageUpdateInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "data")
    }
  }
}

public struct MessageUpdateInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - contents
  ///   - conversation
  ///   - from
  public init(contents: Swift.Optional<String?> = nil, conversation: Swift.Optional<ConversationUpdateOneInlineInput?> = nil, from: Swift.Optional<MessageFromUpdateOneInlineInput?> = nil) {
    graphQLMap = ["contents": contents, "conversation": conversation, "from": from]
  }

  public var contents: Swift.Optional<String?> {
    get {
      return graphQLMap["contents"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contents")
    }
  }

  public var conversation: Swift.Optional<ConversationUpdateOneInlineInput?> {
    get {
      return graphQLMap["conversation"] as? Swift.Optional<ConversationUpdateOneInlineInput?> ?? Swift.Optional<ConversationUpdateOneInlineInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "conversation")
    }
  }

  public var from: Swift.Optional<MessageFromUpdateOneInlineInput?> {
    get {
      return graphQLMap["from"] as? Swift.Optional<MessageFromUpdateOneInlineInput?> ?? Swift.Optional<MessageFromUpdateOneInlineInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "from")
    }
  }
}

public struct ConversationUpdateOneInlineInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - create: Create and connect one Conversation document
  ///   - update: Update single Conversation document
  ///   - upsert: Upsert single Conversation document
  ///   - connect: Connect existing Conversation document
  ///   - disconnect: Disconnect currently connected Conversation document
  ///   - delete: Delete currently connected Conversation document
  public init(create: Swift.Optional<ConversationCreateInput?> = nil, update: Swift.Optional<ConversationUpdateWithNestedWhereUniqueInput?> = nil, upsert: Swift.Optional<ConversationUpsertWithNestedWhereUniqueInput?> = nil, connect: Swift.Optional<ConversationWhereUniqueInput?> = nil, disconnect: Swift.Optional<Bool?> = nil, delete: Swift.Optional<Bool?> = nil) {
    graphQLMap = ["create": create, "update": update, "upsert": upsert, "connect": connect, "disconnect": disconnect, "delete": delete]
  }

  /// Create and connect one Conversation document
  public var create: Swift.Optional<ConversationCreateInput?> {
    get {
      return graphQLMap["create"] as? Swift.Optional<ConversationCreateInput?> ?? Swift.Optional<ConversationCreateInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "create")
    }
  }

  /// Update single Conversation document
  public var update: Swift.Optional<ConversationUpdateWithNestedWhereUniqueInput?> {
    get {
      return graphQLMap["update"] as? Swift.Optional<ConversationUpdateWithNestedWhereUniqueInput?> ?? Swift.Optional<ConversationUpdateWithNestedWhereUniqueInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "update")
    }
  }

  /// Upsert single Conversation document
  public var upsert: Swift.Optional<ConversationUpsertWithNestedWhereUniqueInput?> {
    get {
      return graphQLMap["upsert"] as? Swift.Optional<ConversationUpsertWithNestedWhereUniqueInput?> ?? Swift.Optional<ConversationUpsertWithNestedWhereUniqueInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "upsert")
    }
  }

  /// Connect existing Conversation document
  public var connect: Swift.Optional<ConversationWhereUniqueInput?> {
    get {
      return graphQLMap["connect"] as? Swift.Optional<ConversationWhereUniqueInput?> ?? Swift.Optional<ConversationWhereUniqueInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "connect")
    }
  }

  /// Disconnect currently connected Conversation document
  public var disconnect: Swift.Optional<Bool?> {
    get {
      return graphQLMap["disconnect"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "disconnect")
    }
  }

  /// Delete currently connected Conversation document
  public var delete: Swift.Optional<Bool?> {
    get {
      return graphQLMap["delete"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "delete")
    }
  }
}

public struct ConversationUpsertWithNestedWhereUniqueInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - where: Unique document search
  ///   - data: Upsert data
  public init(`where`: ConversationWhereUniqueInput, data: ConversationUpsertInput) {
    graphQLMap = ["where": `where`, "data": data]
  }

  /// Unique document search
  public var `where`: ConversationWhereUniqueInput {
    get {
      return graphQLMap["where"] as! ConversationWhereUniqueInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "where")
    }
  }

  /// Upsert data
  public var data: ConversationUpsertInput {
    get {
      return graphQLMap["data"] as! ConversationUpsertInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "data")
    }
  }
}

public struct ConversationUpsertInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - create: Create document if it didn't exist
  ///   - update: Update document if it exists
  public init(create: ConversationCreateInput, update: ConversationUpdateInput) {
    graphQLMap = ["create": create, "update": update]
  }

  /// Create document if it didn't exist
  public var create: ConversationCreateInput {
    get {
      return graphQLMap["create"] as! ConversationCreateInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "create")
    }
  }

  /// Update document if it exists
  public var update: ConversationUpdateInput {
    get {
      return graphQLMap["update"] as! ConversationUpdateInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "update")
    }
  }
}

public struct MessageFromUpdateOneInlineInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - create: Create and connect one MessageFrom document
  ///   - update: Update single MessageFrom document
  ///   - upsert: Upsert single MessageFrom document
  ///   - connect: Connect existing MessageFrom document
  ///   - disconnect: Disconnect currently connected MessageFrom document
  ///   - delete: Delete currently connected MessageFrom document
  public init(create: Swift.Optional<MessageFromCreateInput?> = nil, update: Swift.Optional<MessageFromUpdateWithNestedWhereUniqueInput?> = nil, upsert: Swift.Optional<MessageFromUpsertWithNestedWhereUniqueInput?> = nil, connect: Swift.Optional<MessageFromWhereUniqueInput?> = nil, disconnect: Swift.Optional<Bool?> = nil, delete: Swift.Optional<Bool?> = nil) {
    graphQLMap = ["create": create, "update": update, "upsert": upsert, "connect": connect, "disconnect": disconnect, "delete": delete]
  }

  /// Create and connect one MessageFrom document
  public var create: Swift.Optional<MessageFromCreateInput?> {
    get {
      return graphQLMap["create"] as? Swift.Optional<MessageFromCreateInput?> ?? Swift.Optional<MessageFromCreateInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "create")
    }
  }

  /// Update single MessageFrom document
  public var update: Swift.Optional<MessageFromUpdateWithNestedWhereUniqueInput?> {
    get {
      return graphQLMap["update"] as? Swift.Optional<MessageFromUpdateWithNestedWhereUniqueInput?> ?? Swift.Optional<MessageFromUpdateWithNestedWhereUniqueInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "update")
    }
  }

  /// Upsert single MessageFrom document
  public var upsert: Swift.Optional<MessageFromUpsertWithNestedWhereUniqueInput?> {
    get {
      return graphQLMap["upsert"] as? Swift.Optional<MessageFromUpsertWithNestedWhereUniqueInput?> ?? Swift.Optional<MessageFromUpsertWithNestedWhereUniqueInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "upsert")
    }
  }

  /// Connect existing MessageFrom document
  public var connect: Swift.Optional<MessageFromWhereUniqueInput?> {
    get {
      return graphQLMap["connect"] as? Swift.Optional<MessageFromWhereUniqueInput?> ?? Swift.Optional<MessageFromWhereUniqueInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "connect")
    }
  }

  /// Disconnect currently connected MessageFrom document
  public var disconnect: Swift.Optional<Bool?> {
    get {
      return graphQLMap["disconnect"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "disconnect")
    }
  }

  /// Delete currently connected MessageFrom document
  public var delete: Swift.Optional<Bool?> {
    get {
      return graphQLMap["delete"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "delete")
    }
  }
}

public struct MessageFromUpdateWithNestedWhereUniqueInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - addressBookApp
  public init(addressBookApp: Swift.Optional<AddressBookAppUpdateWithNestedWhereUniqueInput?> = nil) {
    graphQLMap = ["AddressBookApp": addressBookApp]
  }

  public var addressBookApp: Swift.Optional<AddressBookAppUpdateWithNestedWhereUniqueInput?> {
    get {
      return graphQLMap["AddressBookApp"] as? Swift.Optional<AddressBookAppUpdateWithNestedWhereUniqueInput?> ?? Swift.Optional<AddressBookAppUpdateWithNestedWhereUniqueInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "AddressBookApp")
    }
  }
}

public struct MessageFromUpsertWithNestedWhereUniqueInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - addressBookApp
  public init(addressBookApp: Swift.Optional<AddressBookAppUpsertWithNestedWhereUniqueInput?> = nil) {
    graphQLMap = ["AddressBookApp": addressBookApp]
  }

  public var addressBookApp: Swift.Optional<AddressBookAppUpsertWithNestedWhereUniqueInput?> {
    get {
      return graphQLMap["AddressBookApp"] as? Swift.Optional<AddressBookAppUpsertWithNestedWhereUniqueInput?> ?? Swift.Optional<AddressBookAppUpsertWithNestedWhereUniqueInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "AddressBookApp")
    }
  }
}

public struct MessageUpsertWithNestedWhereUniqueInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - where: Unique document search
  ///   - data: Upsert data
  public init(`where`: MessageWhereUniqueInput, data: MessageUpsertInput) {
    graphQLMap = ["where": `where`, "data": data]
  }

  /// Unique document search
  public var `where`: MessageWhereUniqueInput {
    get {
      return graphQLMap["where"] as! MessageWhereUniqueInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "where")
    }
  }

  /// Upsert data
  public var data: MessageUpsertInput {
    get {
      return graphQLMap["data"] as! MessageUpsertInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "data")
    }
  }
}

public struct MessageUpsertInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - create: Create document if it didn't exist
  ///   - update: Update document if it exists
  public init(create: MessageCreateInput, update: MessageUpdateInput) {
    graphQLMap = ["create": create, "update": update]
  }

  /// Create document if it didn't exist
  public var create: MessageCreateInput {
    get {
      return graphQLMap["create"] as! MessageCreateInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "create")
    }
  }

  /// Update document if it exists
  public var update: MessageUpdateInput {
    get {
      return graphQLMap["update"] as! MessageUpdateInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "update")
    }
  }
}

/// Stage system enumeration
public enum Stage: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// The Draft is the default stage for all your content.
  case draft
  /// The Published stage is where you can publish your content to.
  case published
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "DRAFT": self = .draft
      case "PUBLISHED": self = .published
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .draft: return "DRAFT"
      case .published: return "PUBLISHED"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: Stage, rhs: Stage) -> Bool {
    switch (lhs, rhs) {
      case (.draft, .draft): return true
      case (.published, .published): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [Stage] {
    return [
      .draft,
      .published,
    ]
  }
}

public final class GetUserAllContactQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query getUserAllContact($uploadedByUid: String) {
      addressBookApps(where: {uploadedByUid: $uploadedByUid}) {
        __typename
        documentInStages {
          __typename
          id
          createdAt
          updatedAt
          publishedAt
          uploadedByUid
          name
          bio
          country
          mobile
          workNumber
          email
          jobDescription
          job
          contactId
        }
      }
    }
    """

  public let operationName: String = "getUserAllContact"

  public var uploadedByUid: String?

  public init(uploadedByUid: String? = nil) {
    self.uploadedByUid = uploadedByUid
  }

  public var variables: GraphQLMap? {
    return ["uploadedByUid": uploadedByUid]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("addressBookApps", arguments: ["where": ["uploadedByUid": GraphQLVariable("uploadedByUid")]], type: .nonNull(.list(.nonNull(.object(AddressBookApp.selections))))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(addressBookApps: [AddressBookApp]) {
      self.init(unsafeResultMap: ["__typename": "Query", "addressBookApps": addressBookApps.map { (value: AddressBookApp) -> ResultMap in value.resultMap }])
    }

    /// Retrieve multiple addressBookApps
    public var addressBookApps: [AddressBookApp] {
      get {
        return (resultMap["addressBookApps"] as! [ResultMap]).map { (value: ResultMap) -> AddressBookApp in AddressBookApp(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: AddressBookApp) -> ResultMap in value.resultMap }, forKey: "addressBookApps")
      }
    }

    public struct AddressBookApp: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["AddressBookApp"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("documentInStages", type: .nonNull(.list(.nonNull(.object(DocumentInStage.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(documentInStages: [DocumentInStage]) {
        self.init(unsafeResultMap: ["__typename": "AddressBookApp", "documentInStages": documentInStages.map { (value: DocumentInStage) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// Get the document in other stages
      public var documentInStages: [DocumentInStage] {
        get {
          return (resultMap["documentInStages"] as! [ResultMap]).map { (value: ResultMap) -> DocumentInStage in DocumentInStage(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: DocumentInStage) -> ResultMap in value.resultMap }, forKey: "documentInStages")
        }
      }

      public struct DocumentInStage: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["AddressBookApp"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("publishedAt", type: .scalar(String.self)),
            GraphQLField("uploadedByUid", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("bio", type: .scalar(String.self)),
            GraphQLField("country", type: .scalar(String.self)),
            GraphQLField("mobile", type: .scalar(String.self)),
            GraphQLField("workNumber", type: .scalar(String.self)),
            GraphQLField("email", type: .scalar(String.self)),
            GraphQLField("jobDescription", type: .scalar(String.self)),
            GraphQLField("job", type: .scalar(String.self)),
            GraphQLField("contactId", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, createdAt: String, updatedAt: String, publishedAt: String? = nil, uploadedByUid: String, name: String? = nil, bio: String? = nil, country: String? = nil, mobile: String? = nil, workNumber: String? = nil, email: String? = nil, jobDescription: String? = nil, job: String? = nil, contactId: String) {
          self.init(unsafeResultMap: ["__typename": "AddressBookApp", "id": id, "createdAt": createdAt, "updatedAt": updatedAt, "publishedAt": publishedAt, "uploadedByUid": uploadedByUid, "name": name, "bio": bio, "country": country, "mobile": mobile, "workNumber": workNumber, "email": email, "jobDescription": jobDescription, "job": job, "contactId": contactId])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The unique identifier
        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        /// The time the document was created
        public var createdAt: String {
          get {
            return resultMap["createdAt"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "createdAt")
          }
        }

        /// The time the document was updated
        public var updatedAt: String {
          get {
            return resultMap["updatedAt"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "updatedAt")
          }
        }

        /// The time the document was published. Null on documents in draft stage.
        public var publishedAt: String? {
          get {
            return resultMap["publishedAt"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "publishedAt")
          }
        }

        /// Amplify logged in UID.
        public var uploadedByUid: String {
          get {
            return resultMap["uploadedByUid"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "uploadedByUid")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var bio: String? {
          get {
            return resultMap["bio"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "bio")
          }
        }

        public var country: String? {
          get {
            return resultMap["country"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "country")
          }
        }

        public var mobile: String? {
          get {
            return resultMap["mobile"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "mobile")
          }
        }

        public var workNumber: String? {
          get {
            return resultMap["workNumber"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "workNumber")
          }
        }

        public var email: String? {
          get {
            return resultMap["email"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "email")
          }
        }

        public var jobDescription: String? {
          get {
            return resultMap["jobDescription"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "jobDescription")
          }
        }

        public var job: String? {
          get {
            return resultMap["job"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "job")
          }
        }

        public var contactId: String {
          get {
            return resultMap["contactId"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "contactId")
          }
        }
      }
    }
  }
}

public final class UpsertAndPublishAddressBookMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation upsertAndPublishAddressBook($data: AddressBookAppUpsertInput!, $contactId: String!) {
      upsertAddressBookApp(where: {contactId: $contactId}, upsert: $data) {
        __typename
        name
        stage
        id
      }
      publishAddressBookApp(to: [PUBLISHED], where: {contactId: $contactId}) {
        __typename
        documentInStages {
          __typename
          name
          stage
          id
        }
      }
    }
    """

  public let operationName: String = "upsertAndPublishAddressBook"

  public var data: AddressBookAppUpsertInput
  public var contactId: String

  public init(data: AddressBookAppUpsertInput, contactId: String) {
    self.data = data
    self.contactId = contactId
  }

  public var variables: GraphQLMap? {
    return ["data": data, "contactId": contactId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("upsertAddressBookApp", arguments: ["where": ["contactId": GraphQLVariable("contactId")], "upsert": GraphQLVariable("data")], type: .object(UpsertAddressBookApp.selections)),
        GraphQLField("publishAddressBookApp", arguments: ["to": ["PUBLISHED"], "where": ["contactId": GraphQLVariable("contactId")]], type: .object(PublishAddressBookApp.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(upsertAddressBookApp: UpsertAddressBookApp? = nil, publishAddressBookApp: PublishAddressBookApp? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "upsertAddressBookApp": upsertAddressBookApp.flatMap { (value: UpsertAddressBookApp) -> ResultMap in value.resultMap }, "publishAddressBookApp": publishAddressBookApp.flatMap { (value: PublishAddressBookApp) -> ResultMap in value.resultMap }])
    }

    /// Upsert one addressBookApp
    public var upsertAddressBookApp: UpsertAddressBookApp? {
      get {
        return (resultMap["upsertAddressBookApp"] as? ResultMap).flatMap { UpsertAddressBookApp(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "upsertAddressBookApp")
      }
    }

    /// Publish one addressBookApp
    public var publishAddressBookApp: PublishAddressBookApp? {
      get {
        return (resultMap["publishAddressBookApp"] as? ResultMap).flatMap { PublishAddressBookApp(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "publishAddressBookApp")
      }
    }

    public struct UpsertAddressBookApp: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["AddressBookApp"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("stage", type: .nonNull(.scalar(Stage.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(name: String? = nil, stage: Stage, id: GraphQLID) {
        self.init(unsafeResultMap: ["__typename": "AddressBookApp", "name": name, "stage": stage, "id": id])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      /// System stage field
      public var stage: Stage {
        get {
          return resultMap["stage"]! as! Stage
        }
        set {
          resultMap.updateValue(newValue, forKey: "stage")
        }
      }

      /// The unique identifier
      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }
    }

    public struct PublishAddressBookApp: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["AddressBookApp"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("documentInStages", type: .nonNull(.list(.nonNull(.object(DocumentInStage.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(documentInStages: [DocumentInStage]) {
        self.init(unsafeResultMap: ["__typename": "AddressBookApp", "documentInStages": documentInStages.map { (value: DocumentInStage) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// Get the document in other stages
      public var documentInStages: [DocumentInStage] {
        get {
          return (resultMap["documentInStages"] as! [ResultMap]).map { (value: ResultMap) -> DocumentInStage in DocumentInStage(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: DocumentInStage) -> ResultMap in value.resultMap }, forKey: "documentInStages")
        }
      }

      public struct DocumentInStage: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["AddressBookApp"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("stage", type: .nonNull(.scalar(Stage.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String? = nil, stage: Stage, id: GraphQLID) {
          self.init(unsafeResultMap: ["__typename": "AddressBookApp", "name": name, "stage": stage, "id": id])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        /// System stage field
        public var stage: Stage {
          get {
            return resultMap["stage"]! as! Stage
          }
          set {
            resultMap.updateValue(newValue, forKey: "stage")
          }
        }

        /// The unique identifier
        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }
      }
    }
  }
}
