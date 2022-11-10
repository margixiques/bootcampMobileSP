/// Challenge 1
// MARK: - 1. Random String Number Generator

print("******* 1 *******")
struct StringGenerator {
    
    /// Method that returns a random string array by given type
    func build(by type: String) -> String {
        var result = ""
        
        /// Set prefix for the result string by given type
        switch type {
        case "TipoA":
            result = "54"
        case "TipoB":
            result = "08"
        default:
            return "Opción no válida"
        }
        
        /// The string lenght needs to have 10 characters.
        /// So we're adding the missing 8 characters.
        for _ in 0..<8 {
            /// The numbers added to the string will be between 0 and 9
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

// MARK: - 2. Number array sort
print("******* 2 *******")
struct ArrayGenerator {
    
    /// Method that returns a random number array by given lenght
    func randomArray(of lenght: Int) -> [Int] {
        var array: [Int] = []
        
        for _ in 0..<lenght {
            /// The numbers in the array will be between 0 and 100
            let number = Int.random(in: 0...100)
            array.append(number)
        }
        return array
    }
    
    /// Method that returns the index from the smallest number in an array
    private func findSmallest(array: [Int]) -> Int{
        var smallest = array[0]
        var smallestIndex = 0
        
        for i in 0..<array.count {
            if array[i] < smallest {
             smallest = array[i]
             smallestIndex = i
            }
        }
        return smallestIndex
    }
    
    /// Method used to sort a given array by an especific order
    func sort(array: [Int], order: String) -> [Int] {
        var newarray: [Int] = []
        var tempArray = array
        
        /// Sort by given order
        switch order {
        case "Asc":
            for _ in 0..<tempArray.count {
                let smallestIndex = findSmallest(array: tempArray)
                /// Obtain the smallest number from the array,
                /// Remove it from the original arrray
                /// And append it to a new array
                newarray.append(tempArray.remove(at: smallestIndex))
            }
        case "Desc":
            for _ in 0..<tempArray.count {
                let smallestIndex = findSmallest(array: tempArray)
                /// Obtain the smallest number from the array,
                /// Remove it from the original arrray
                /// And insert it to a new array at the first position
                newarray.insert(tempArray.remove(at: smallestIndex), at: 0)
            }
        default:
            print("Opción no válida")
            break
        }
        return newarray
    }
}

let example2 = ArrayGenerator()

let originalArray = example2.randomArray(of: 20)
print("El arreglo original es:",originalArray)

let ascendentArray = example2.sort(array: originalArray,
                                   order: "Asc")
print("El arreglo ordenado en forma ascendente es:",ascendentArray)

let descendentArray = example2.sort(array: originalArray,
                                    order: "Desc")
print("El arreglo ordenado en forma descendente es:",descendentArray)

let defaultArray = example2.sort(array: originalArray,
                                 order: "A")

