
import Foundation

enum Theme {
    case red, purple, orange, yellow, green, blue, gray
    case custom(Double,Double,Double,Double)
}

extension Theme: Codable {
    private enum CodingKeys: String, CodingKey {
        case base
        case customColorParams = "customColor"
    }
    
    private enum Base: String, Codable {
        case red, purple, orange, yellow, green, blue, gray, custom
    }
    
    private struct CustomColorParams: Codable {
        let red: Double
        let green: Double
        let blue: Double
        let alpha: Double
        
        init(red: Double, green: Double, blue: Double, alpha: Double) {
            self.red = red
            self.green = green
            self.blue = blue
            self.alpha = alpha
        }
        
        enum CodingKeys: String, CodingKey {
            case red, green, blue, alpha
        }
        
        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(red, forKey: .red)
            try container.encode(green, forKey: .green)
            try container.encode(blue, forKey: .blue)
            try container.encode(alpha, forKey: .alpha)
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            red = try container.decode(Double.self, forKey: .red)
            green = try container.decode(Double.self, forKey: .green)
            blue = try container.decode(Double.self, forKey: .blue)
            alpha = try container.decode(Double.self, forKey: .alpha)
        }
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        switch self {
        case .red:
            try container.encode(Base.red, forKey: .base)
        case .purple:
            try container.encode(Base.purple, forKey: .base)
        case .orange:
            try container.encode(Base.orange, forKey: .base)
        case .yellow:
            try container.encode(Base.yellow, forKey: .base)
        case .green:
            try container.encode(Base.green, forKey: .base)
        case .blue:
            try container.encode(Base.blue, forKey: .base)
        case .gray:
            try container.encode(Base.gray, forKey: .base)
        case .custom(let r, let g, let b, let a):
            try container.encode(Base.custom, forKey: .base)
            try container.encode(CustomColorParams(red: r, green: g, blue: b, alpha: a),forKey: .customColorParams)
        }
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let base = try container.decode(Base.self, forKey: .base)
        
        switch base {
        case .red:
            self = .red
        case .purple:
            self = .purple
        case .orange:
            self = .orange
        case .yellow:
            self = .yellow
        case .green:
            self = .green
        case .blue:
            self = .blue
        case .gray:
            self = .gray
        case .custom:
            let customValues = try container.decode(CustomColorParams.self, forKey: .customColorParams)
            self = .custom(customValues.red, customValues.green, customValues.blue, customValues.alpha)
        }
    }
}

extension Theme: RawRepresentable {
    init?(rawValue: String) {
        switch rawValue {
        case "red": self = .red
        case "purple": self = .purple
        case "orange": self = .orange
        case "yellow": self = .yellow
        case "green": self = .green
        case "blue": self = .blue
        case "gray": self = .gray
        default:
            guard let range = rawValue.range(of: "custom", options: .anchored) else { return nil }
            guard !(rawValue.suffix(from: range.upperBound).isEmpty) else { return nil }
            let colorTuple = rawValue.suffix(from: range.upperBound)

            guard !(colorTuple.components(separatedBy: ",").isEmpty) else { return nil }
            let colorArray = colorTuple.components(separatedBy: ",")
            
            guard colorArray.count == 4,
                  let red = Double(colorArray[0]),
                  let green = Double(colorArray[1]),
                  let blue = Double(colorArray[2]),
                  let alpha = Double(colorArray[3]) else { return nil }
            guard alpha >= 0.0, alpha <= 1.0 else { return nil }
            self = .custom(red, green, blue, alpha)
        }
    }
    
    var rawValue: String {
        switch self {
        
        case .red: return "red"
        case .purple: return "purlple"
        case .orange: return "orange"
        case .yellow: return "yellow"
        case .green: return "green"
        case .blue: return "blue"
        case .gray: return "gray"
        case .custom(let red, let green, let blue, let alpha): return "custom\(red),\(green),\(blue),\(alpha)"
        }
    }
    
}

extension Theme: CaseIterable {
    static var allCases: [Theme] {
        [.red, .purple, .orange, .yellow, .green, .blue, .gray]
    }
}
