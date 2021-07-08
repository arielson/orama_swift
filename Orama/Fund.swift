// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let fund = try? newJSONDecoder().decode(Fund.self, from: jsonData)

import Foundation

// MARK: - Fund
struct Fund: Codable {
    let initialDate: String
    let performanceAudios: [JSONAny]
    let fees: Fees
    let isSimple: Bool
    let descriptionSEO: String
    let operability: Operability?
    let fullName: String
    let openingDate: String?
    let id: Int
    let isClosed: Bool
    let simpleName: String
    let targetFund: JSONNull?
    let documents: [Document]
    let specification: Specification
    let quotaDate, taxClassification, cnpj: String?
    let fundDescription: Description
    let performanceVideos: [JSONAny]
    let isActive: Bool
    let benchmark: Benchmark
    let oramaStandard: Bool
    let slug: String
    let fundSituation: FundSituation
    let volatility12M: String?
    let strategyVideo: StrategyVideo?
    let insuranceCompanyCode: JSONNull?
    let profitabilities: Profitabilities
    let closedToCaptureExplanation: String
    let closingDate: String?
    let showDetailedReview: Bool
    let netPatrimony12M: String?
    let isClosedToCapture: Bool
    let fundManager: FundManager
    let esgSeal: Bool

    enum CodingKeys: String, CodingKey {
        case initialDate = "initial_date"
        case performanceAudios = "performance_audios"
        case fees
        case isSimple = "is_simple"
        case descriptionSEO = "description_seo"
        case operability
        case fullName = "full_name"
        case openingDate = "opening_date"
        case id
        case isClosed = "is_closed"
        case simpleName = "simple_name"
        case targetFund = "target_fund"
        case documents, specification
        case quotaDate = "quota_date"
        case taxClassification = "tax_classification"
        case cnpj
        case fundDescription = "description"
        case performanceVideos = "performance_videos"
        case isActive = "is_active"
        case benchmark
        case oramaStandard = "orama_standard"
        case slug
        case fundSituation = "fund_situation"
        case volatility12M = "volatility_12m"
        case strategyVideo = "strategy_video"
        case insuranceCompanyCode = "insurance_company_code"
        case profitabilities
        case closedToCaptureExplanation = "closed_to_capture_explanation"
        case closingDate = "closing_date"
        case showDetailedReview = "show_detailed_review"
        case netPatrimony12M = "net_patrimony_12m"
        case isClosedToCapture = "is_closed_to_capture"
        case fundManager = "fund_manager"
        case esgSeal = "esg_seal"
    }
}

// MARK: - Benchmark
struct Benchmark: Codable {
    let id: Int
    let name: String
}

// MARK: - Document
struct Document: Codable {
    let position: Int
    let documentType, name, documentURL: String

    enum CodingKeys: String, CodingKey {
        case position
        case documentType = "document_type"
        case name
        case documentURL = "document_url"
    }
}

// MARK: - Fees
struct Fees: Codable {
    let maximumAdministrationFee, anticipatedRetrievalFeeValue, administrationFee, anticipatedRetrievalFee: String
    let performanceFee: String
    let hasAnticipatedRetrieval: Bool

    enum CodingKeys: String, CodingKey {
        case maximumAdministrationFee = "maximum_administration_fee"
        case anticipatedRetrievalFeeValue = "anticipated_retrieval_fee_value"
        case administrationFee = "administration_fee"
        case anticipatedRetrievalFee = "anticipated_retrieval_fee"
        case performanceFee = "performance_fee"
        case hasAnticipatedRetrieval = "has_anticipated_retrieval"
    }
}

// MARK: - Description
struct Description: Codable {
    let objective: String
    let movieURL: String?
    let targetAudience, strengths, strategy: String

    enum CodingKeys: String, CodingKey {
        case objective
        case movieURL = "movie_url"
        case targetAudience = "target_audience"
        case strengths, strategy
    }
}

// MARK: - FundManager
struct FundManager: Codable {
    let fundManagerDescription: String
    let id: Int
    let fullName, logo, slug, name: String

    enum CodingKeys: String, CodingKey {
        case fundManagerDescription = "description"
        case id
        case fullName = "full_name"
        case logo, slug, name
    }
}

// MARK: - FundSituation
struct FundSituation: Codable {
    let code, name: String
}

// MARK: - Operability
struct Operability: Codable {
    let hasOperationsOnThursdays: Bool
    let retrievalLiquidationDaysType, applicationQuotationDaysType: String
    let retrievalQuotationDays: Int
    let anticipatedRetrievalQuotationDaysType, anticipatedRetrievalQuotationDaysStr, retrievalQuotationDaysType: String
    let anticipatedRetrievalQuotationDays: Int
    let hasOperationsOnWednesdays: Bool
    let minimumBalancePermanence: String
    let hasOperationsOnMondays, hasGracePeriod: Bool
    let applicationTimeLimit, retrievalTimeLimit: String
    let hasOperationsOnFridays: Bool
    let anticipateRetrievalLiquidationDays: Int
    let minimumInitialApplicationAmount, anticipateRetrievalLiquidationDaysType, retrievalSpecialType, anticipateRetrievalLiquidationDaysStr: String
    let applicationQuotationDaysStr: String
    let gracePeriodInDaysStr: String?
    let retrievalQuotationDaysStr: String
    let gracePeriodInDays: Int
    let retrievalLiquidationDaysStr, minimumSubsequentRetrievalAmount: String
    let retrievalDirect: Bool
    let retrievalLiquidationDays, applicationQuotationDays: Int
    let maxBalancePermanence, maximumInitialApplicationAmount: String
    let hasOperationsOnTuesdays: Bool
    let minimumSubsequentApplicationAmount: String

    enum CodingKeys: String, CodingKey {
        case hasOperationsOnThursdays = "has_operations_on_thursdays"
        case retrievalLiquidationDaysType = "retrieval_liquidation_days_type"
        case applicationQuotationDaysType = "application_quotation_days_type"
        case retrievalQuotationDays = "retrieval_quotation_days"
        case anticipatedRetrievalQuotationDaysType = "anticipated_retrieval_quotation_days_type"
        case anticipatedRetrievalQuotationDaysStr = "anticipated_retrieval_quotation_days_str"
        case retrievalQuotationDaysType = "retrieval_quotation_days_type"
        case anticipatedRetrievalQuotationDays = "anticipated_retrieval_quotation_days"
        case hasOperationsOnWednesdays = "has_operations_on_wednesdays"
        case minimumBalancePermanence = "minimum_balance_permanence"
        case hasOperationsOnMondays = "has_operations_on_mondays"
        case hasGracePeriod = "has_grace_period"
        case applicationTimeLimit = "application_time_limit"
        case retrievalTimeLimit = "retrieval_time_limit"
        case hasOperationsOnFridays = "has_operations_on_fridays"
        case anticipateRetrievalLiquidationDays = "anticipate_retrieval_liquidation_days"
        case minimumInitialApplicationAmount = "minimum_initial_application_amount"
        case anticipateRetrievalLiquidationDaysType = "anticipate_retrieval_liquidation_days_type"
        case retrievalSpecialType = "retrieval_special_type"
        case anticipateRetrievalLiquidationDaysStr = "anticipate_retrieval_liquidation_days_str"
        case applicationQuotationDaysStr = "application_quotation_days_str"
        case gracePeriodInDaysStr = "grace_period_in_days_str"
        case retrievalQuotationDaysStr = "retrieval_quotation_days_str"
        case gracePeriodInDays = "grace_period_in_days"
        case retrievalLiquidationDaysStr = "retrieval_liquidation_days_str"
        case minimumSubsequentRetrievalAmount = "minimum_subsequent_retrieval_amount"
        case retrievalDirect = "retrieval_direct"
        case retrievalLiquidationDays = "retrieval_liquidation_days"
        case applicationQuotationDays = "application_quotation_days"
        case maxBalancePermanence = "max_balance_permanence"
        case maximumInitialApplicationAmount = "maximum_initial_application_amount"
        case hasOperationsOnTuesdays = "has_operations_on_tuesdays"
        case minimumSubsequentApplicationAmount = "minimum_subsequent_application_amount"
    }
}

// MARK: - Profitabilities
struct Profitabilities: Codable {
    let m60, m48, m24, m36: String?
    let month, m12, year, day: String?
}

// MARK: - Specification
struct Specification: Codable {
    let fundMainStrategyName: String
    let fundSuitabilityProfile, fundRiskProfile: FundProfile
    let fundMainStrategyExplanation, fundType, fundClass: String
    let fundMacroStrategy: FundMaStrategy
    let fundClassAnbima: String?
    let fundMainStrategy: FundMaStrategy
    let isQualified: Bool

    enum CodingKeys: String, CodingKey {
        case fundMainStrategyName = "fund_main_strategy_name"
        case fundSuitabilityProfile = "fund_suitability_profile"
        case fundRiskProfile = "fund_risk_profile"
        case fundMainStrategyExplanation = "fund_main_strategy_explanation"
        case fundType = "fund_type"
        case fundClass = "fund_class"
        case fundMacroStrategy = "fund_macro_strategy"
        case fundClassAnbima = "fund_class_anbima"
        case fundMainStrategy = "fund_main_strategy"
        case isQualified = "is_qualified"
    }
}

// MARK: - FundMaStrategy
struct FundMaStrategy: Codable {
    let explanation: String
    let id: Int
    let name: String
    let fundMacroStrategy: Int?

    enum CodingKeys: String, CodingKey {
        case explanation, id, name
        case fundMacroStrategy = "fund_macro_strategy"
    }
}

// MARK: - FundProfile
struct FundProfile: Codable {
    let scoreRangeOrder: Int
    let name: String

    enum CodingKeys: String, CodingKey {
        case scoreRangeOrder = "score_range_order"
        case name
    }
}

// MARK: - StrategyVideo
struct StrategyVideo: Codable {
    let strategyVideoDescription, title: String
    let url: String
    let published: String?
    let id: Int
    let enabledForTvorama: Bool
    let youtubeID: String
    let thumbnail: String?

    enum CodingKeys: String, CodingKey {
        case strategyVideoDescription = "description"
        case title, url, published, id
        case enabledForTvorama = "enabled_for_tvorama"
        case youtubeID = "youtube_id"
        case thumbnail
    }
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {

    let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}
