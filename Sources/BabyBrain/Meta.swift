
/*
 * @nixzhu (zhuhongxu@gmail.com)
 */

public struct Meta {
    let isPublic: Bool
    let modelType: String
    let declareVariableProperties: Bool
    let jsonDictionaryName: String
    let propertyMap: [String: String]

    public init(isPublic: Bool, modelType: String, declareVariableProperties: Bool, jsonDictionaryName: String, propertyMap: [String: String]) {
        self.isPublic = isPublic
        self.modelType = modelType
        self.declareVariableProperties = declareVariableProperties
        self.jsonDictionaryName = jsonDictionaryName
        self.propertyMap = propertyMap
    }

    static var `default`: Meta {
        return Meta(
            isPublic: false,
            modelType: "struct",
            declareVariableProperties: false,
            jsonDictionaryName: "[String: Any]",
            propertyMap: [:]
        )
    }

    var publicCode: String {
        return isPublic ? "public " : ""
    }

    var declareKeyword: String {
        return declareVariableProperties ? "var" : "let"
    }
}
