/// Challenge 1
/// - 1. Random String Number Generator

struct StringGenerator {
    
    func build(by type: String) -> String {
        var result = ""
        
        switch type {
        case "TipoA":
            result = "54"
        case "TipoB":
            result = "08"
        default:
            return "Opción no válida"
        }
        
        for _ in 0..<8 {
            let number = Int.random(in: 0...9)
            result += "\(number)"
        }
        return result
    }
    
}

let stringGenerator = StringGenerator()
print(
    "La cadena de texto para TipoA es:",
    stringGenerator.build(by: "TipoA")
)
print(
    "La cadena de texto para TipoB es:",
    stringGenerator.build(by: "TipoB")
)

print(stringGenerator.build(by: "TipoC"))
